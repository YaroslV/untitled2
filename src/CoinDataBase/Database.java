package CoinDataBase;

import javafx.scene.image.Image;

import java.sql.*;

/**
 * Created by Yaroslav on 6/4/2014.
 */
    public class Database {
        private Connection con;
        private String url;

        public static String Fearless() {
            return "Turbo Simple System!YEEPPPP..";
        }
        public static ResultSet Requests() {
            String user = "Myuser";//Логин пользователя
            String password = "9999";//Пароль пользователя
            String url = "jdbc:mysql://localhost:8888/ebookshop";//URL адрес
            String driver = "C:\\Users\\hi\\.IntelliJIdea13\\config\\jdbc-drivers\\mysql-connector-java-5.1.29-bin";//Имя драйвера


            try {
                Class.forName(driver);//Регистрируем драйвер
            } catch (ClassNotFoundException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
            Connection c = null;//Соединение с БД
            try{
                c = DriverManager.getConnection(url, user, password);//Установка соединения с БД
                Statement st = c.createStatement();//Готовим запрос
                ResultSet rs = st.executeQuery("select * from UkrainianCoins");//Выполняем запрос к БД, результат в переменной rs
                while(rs.next()){
                    System.out.println(rs.getString("Login"));//Последовательно для каждой строки выводим значение из колонки ColumnName
                }
            } catch(Exception e){
                e.printStackTrace();
            }
            finally{
                //Обязательно необходимо закрыть соединение
                try {
                    if(c != null)
                        c.close();
                } catch (SQLException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                }
            }
            return null;
        }

        public Database() {
            try {
                Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            } catch (Exception e){
                System.out.println("Cannot load drivers");
            }


            try {
                url = "jdbc:odbc:EboobShop";
                con = DriverManager.getConnection(url,"localhost", "2222");
            } catch (Exception e){
                System.out.println("Cannot connect ot database");
            }


        }
        public void CreateTable() {
            String CreateNewTable = "CREATE TABLE COFFEES " +                //це просто приклад
                    "(COF_NAME VARCHAR(32), SUP_ID INTEGER, PRICE FLOAT, " +
                    "SALES INTEGER, TOTAL INTEGER)";
            try {
                Statement stmt = con.createStatement();
                stmt.executeUpdate(CreateNewTable);
            } catch ( Exception ex){
                //do smth
            }


        }

        public ResultSet GetImageFromDataBase(Image img) { //функція повертатиме
            //img картинка яку завантажують з комп'ютера        поле відповідної картинки,
            // ЩОб продовжити код треба знати як зображення      картинка це ключ для пошуку
            // зберігається в базі даних
            String GetValueFromTable = "SELECT * "+
                    " FROM ukrainiancoins" +
                    " WHERE /*КАРТИНКА = КАРТИНЦІ*/";  //Влад ти зможеж
            // це був запит SQL

            // нижче він виконується
            // треба знати як знайти потрібну картинку в базі
            // на рахунок кнопки щоб вибрати файл:
            // на github є мій commit "Brilliant"
            // там FileChooser...
            //

            Statement stmt = null;
            ResultSet rs = null;
            try {
                stmt = con.createStatement();
                rs = stmt.executeQuery(GetValueFromTable);

            } catch ( Exception ex){
                //do smth
            }

            return rs;
        }

        //як виводити результати сторінка 68
        //книжка по JDBC що я кидав



    }

