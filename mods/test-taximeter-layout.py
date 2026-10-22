"""Structural regression checks; these do not replace on-device visual testing."""
from pathlib import Path
import xml.etree.ElementTree as ET

RES = Path(__file__).resolve().parents[1] / "vek_decoded" / "res"
A = "{http://schemas.android.com/apk/res/android}"
required = {
    "price_int", "price_fractional", "time", "distance", "speed", "tariff",
    "min_price", "min_price_operation", "min_price_includes_kms",
    "min_price_includes_minutes", "price_per_km", "price_per_minute", "extra_charge",
}
for variant in ("layout", "layout-v17", "layout-land-v17"):
    root = ET.parse(RES / variant / "fragment_taximeter.xml").getroot()
    parents = {child: parent for parent in root.iter() for child in parent}
    by_id = {}
    for element in root.iter():
        name = element.get(A + "id")
        if name:
            assert name not in by_id, (variant, "duplicate ID", name)
            by_id[name] = element
    assert all("@id/taximeter_textView_" + name in by_id for name in required)
    fare = by_id["@id/taximeter_textView_price_int"]
    assert fare.get(A + "maxLines") == "1"
    assert fare.get(A + "singleLine") is None
    assert fare.get(A + "scrollHorizontally") == "false"
    assert fare.get(A + "autoSizeTextType") == "uniform"
    assert fare.get(A + "textColor") in ("@color/accent", "@color/amoled_white")
    assert by_id["@id/taximeter_textView_price_fractional"].get(A + "visibility") == "gone"
    ancestor = parents.get(fare)
    while ancestor is not None:
        assert ancestor.tag != "ScrollView", (variant, "unbounded fare measurement")
        ancestor = parents.get(ancestor)
    speed = by_id["@id/taximeter_LinearLayout_speed"]
    ancestor = parents.get(speed)
    while ancestor is not None:
        assert ancestor.tag != "FrameLayout", (variant, "speed overlaps action layer")
        ancestor = parents.get(ancestor)
    for control in ("start", "idle", "receipt"):
        assert by_id["@id/taximeter_button_" + control].tag == "Button"
    if variant == "layout-land-v17":
        panel = next(node for node in root if node.tag == "ScrollView")
        assert panel.get(A + "layout_marginBottom") == "96.0dp"
        assert panel.get(A + "paddingBottom") is None
        assert panel.get(A + "scrollbars") == "vertical"
    else:
        assert root.tag == "LinearLayout"
        assert parents[fare].get(A + "layout_weight") == "1.0"
    print(variant + ": layout regression checks passed")
