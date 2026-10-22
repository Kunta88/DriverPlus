import com.txdriver.compat.WebRequestHealth;
public final class WebRequestHealthTest {
    static int checks;
    static void check(boolean ok,String name){checks++;if(!ok)throw new AssertionError(name);}
    public static void main(String[] args){
        WebRequestHealth h=new WebRequestHealth();
        check(h.note(0).isEmpty(),"no request is not a failure");
        h.failed("HTTP 503",1000);
        check(h.note(1000).contains("последний запрос не выполнен"),"request failure not service outage");
        check(h.note(1000).contains("HTTP 503"),"safe reason visible");
        check(h.note(13000).contains("12 с назад"),"seconds since actual failure");
        check(h.note(61000).contains("1 мин назад"),"minutes");
        check(!h.note(120999).contains("ранее"),"recent boundary");
        check(h.note(121000).contains("ранее была ошибка"),"old failure explicitly historical");
        check(h.note(121000).contains("повторной проверки не было"),"age does not imply recovery");
        check(h.note(3601000).contains("1 ч назад"),"hours");
        check(h.note(0).contains("0 с назад"),"negative age clamped");
        h.failed("тайм-аут",4000000);
        check(h.note(4000000).contains("тайм-аут")&&!h.note(4000000).contains("503"),"new failure replaces old");
        check(h.failure().equals("тайм-аут"),"legacy accessor");
        h.succeeded();
        check(h.note(4000001).isEmpty()&&h.failure().isEmpty(),"real success clears warning");
        System.out.println("WebRequestHealth: "+checks+" checks passed");
    }
}
