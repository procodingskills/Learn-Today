public class ClassPOC {
    public static String query;
    public static String acId;
    public static void getQuery(){
        for(Account rec : Database.query(query)){
            system.debug('Account Name : '+rec.Name);
        }
    }
}