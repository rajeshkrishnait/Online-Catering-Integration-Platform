package getset;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.util.*;

public class arraylist{
	static ArrayList<String> item_i=new ArrayList<String>();
	static ArrayList<String> item_nam=new ArrayList<String>();
	static ArrayList<Integer> item_qua=new ArrayList<Integer>();
	static ArrayList<Integer> item_pric=new ArrayList<Integer>();
	static ArrayList<String> no_pe=new ArrayList<String>();
	static ArrayList<String> servers_require=new ArrayList<String>();
	static ArrayList<String> dat=new ArrayList<String>();
	
	public static ArrayList<String> getItem_i() {
		return item_i;
	}

	public static void setItem_i(ArrayList<String> item_i) {
		arraylist.item_i = item_i;
	}

	public static ArrayList<String> getItem_nam() {
		return item_nam;
	}

	public static void setItem_nam(ArrayList<String> item_nam) {
		arraylist.item_nam = item_nam;
	}

	public static ArrayList<Integer> getItem_qua() {
		return item_qua;
	}

	public static void setItem_qua(ArrayList<Integer> item_qua) {
		arraylist.item_qua = item_qua;
	}

	public static ArrayList<Integer> getItem_pric() {
		return item_pric;
	}

	public static void setItem_pric(ArrayList<Integer> item_pric) {
		arraylist.item_pric = item_pric;
	}

	public static ArrayList<String> getNo_pe() {
		return no_pe;
	}

	public static void setNo_pe(ArrayList<String> no_pe) {
		arraylist.no_pe = no_pe;
	}

	public static ArrayList<String> getServers_require() {
		return servers_require;
	}

	public static void setServers_require(ArrayList<String> servers_require) {
		arraylist.servers_require = servers_require;
	}

	public static ArrayList<String> getDat() {
		return dat;
	}

	public static void setDat(ArrayList<String> dat) {
		arraylist.dat = dat;
	}



	public String cartin(String item_id,String item_name,String item_quan,String item_price,String no_peo,String servers_required,String date)
	{
		item_i.add(item_id);
		item_qua.add(Integer.parseInt(item_quan));
		item_nam.add(item_name);
		item_pric.add(Integer.parseInt(item_price));
		no_pe.add(no_peo);
		servers_require.add(servers_required);
		dat.add(date);
		System.out.println(item_i);
		System.out.println(item_pric);
		System.out.println(item_nam);
		System.out.println(item_qua);
		System.out.println(no_pe);
		System.out.println(servers_require);
		System.out.println(dat);
		return "succesful";
	}
	
	public static void main(String[] main)
	{
		System.out.print(item_i);
		System.out.print(item_pric);
		System.out.print(item_nam);
		System.out.print(item_qua);
		System.out.print(no_pe);
		System.out.print(servers_require);
		System.out.print(dat);

		

	}
}
