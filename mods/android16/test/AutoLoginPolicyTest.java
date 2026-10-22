import com.txdriver.compat.AutoLoginPolicy;
public class AutoLoginPolicyTest {
    static int checks;
    static void check(boolean ok,String name){checks++;if(!ok)throw new AssertionError(name);}
    public static void main(String[] args){
        check(!AutoLoginPolicy.shouldSkipForm(null,null,false,false),"first launch");
        check(!AutoLoginPolicy.shouldSkipForm("","",true,false),"empty saved fields");
        check(!AutoLoginPolicy.shouldSkipForm("7",null,true,false),"missing password");
        check(!AutoLoginPolicy.shouldSkipForm(null,"secret",true,false),"missing login");
        check(!AutoLoginPolicy.shouldSkipForm("   ","secret",true,false),"blank login");
        check(!AutoLoginPolicy.shouldSkipForm("7","",true,false),"empty password");
        check(!AutoLoginPolicy.shouldSkipForm("7","secret",false,false),"company selection required");
        check(AutoLoginPolicy.shouldSkipForm("7","secret",true,false),"saved credentials route to main");
        check(!AutoLoginPolicy.shouldSkipForm("7","secret",true,true),"server rejection returns to manual login");
        check(AutoLoginPolicy.shouldSkipForm("7","secret",true,false),"explicit retry unblocks");
        check(AutoLoginPolicy.shouldSkipForm(" 7 ","secret",true,false),"routing does not alter credentials");
        check(AutoLoginPolicy.shouldSkipForm("7"," ",true,false),"password is not silently trimmed");
        System.out.println("AutoLoginPolicy: "+checks+" checks passed");
    }
}
