//#include<iostream>                                                   
//#include<map>
//#include<string>                                                        
//#include<windows.h> 
//#include<conio.h>
//#include <stdexcept> 
//#include<fstream>                                         
//using namespace std;                                           
//
//class helpline_team
//{	
//    public:                                                        
//    helpline_team(){}                                                          
//	~helpline_team(){} 	                                                        
//    private:	                                               
//    void check()                                            
//    	{                                                   
//    	int svr;                                           
//    	string userName,userPassword="";
//    	char pw =' ';
//        int loginAttempt = 0;                          
//        while (loginAttempt < 2)                         
//        {                                               
//        cout<<"\n Please enter your user name: ";
//        cin>>userName;
//        cout<<"\n Please enter your user password: ";
//        	while(pw!=13)
//	    {
//		pw = getch();
//		if(pw!=13)
//		{
//		userPassword += pw;
//		cout<<"*";
//        }
//        } 
//        if ((userName == "Tadeeb" || userName == "Nipun") && (userPassword == "T@covid19" || userPassword == "N@covid19"))                  
//        {                                                                       
//		cout<<"\n\n\n\t\t\t\t\t\t Welcome "<<userName<<" "<<"!\n";                          
//		break;                                                                  
//        }                                                                    
//        else
//        {
//        cout<<"\n\n Invalid login attempt. Please try again.\n" << '\n';
//        loginAttempt++;
//        }
//        }
//        // This if just to check user attempts and is outside of if-else ladder.
//        if (loginAttempt == 2)
//        {
//        cout << "\n\t\t\t\tToo many login attempts! Sorry try after 10 minutes.";
//        exit(0);
//        }
//// new part of iteration inside check method begins from here
//  while(loginAttempt<100)   
//    {
//    	cout<<"\n\n Use the intensity number mentioned below to get information about different labs\n\
// (3 for high)\n\
// (2 for medium)\n\
// (1 for low)\n\n\
// Enter the number to know the details = ";                                         
//	    cin>>svr;                                                                             
//        if (svr==1)                                                                          
//        {                                                                                  
//        cout<<"\n\n This lab check patients with low intensity symptoms.\n\
// Lab Name: Ayur Tests.\n\
// Location: Freeganj Ujjain (M.P).\n\
// capacity: 40";
//        break;
//        }
//        else if (svr==2)
//        {
//        cout<<"\n\n This is your lab which checks patient with medium symptoms.\n\
// Lab Name: Sanjeevni Lab.\n\
// Location: Ring road Ujjain (M.P).\n\
// capacity: 60";
//        break;
//        }
//        else if (svr==3)
//        {
//      	cout<<"\n\n This lab checks patient with High symptoms.\n\
// Lab Name: Bhagwati diagnostics.\n\
// Location: Main road Ujjain (M.P).\n\
// capacity: 72";
//        break;
//        }
//        else
//        {
//        cout<<"\n\n\n Wrong input given,Try again!!";
//		loginAttempt++;	
//        }
//    }
//    }
//    protected:	                                                         
//		int A_total_patients,B_total_patients,C_total_patients,total;           
//		void call()                                                    
//		{                                                             
//			check();                                                  
//		}                                                            
//	    void data_frm_ht()                                          
//		{                                                          
//	 	 A_total_patients = 80;                                   
//		 B_total_patients = 40;                            
//		 C_total_patients = 60;    
//		 total = A_total_patients + B_total_patients + C_total_patients;                            
//	    }                                                      
//};                                                             
//class patient_info : protected helpline_team               
//{
//	public:
//		// Destructor for clearing memory space.
//		~patient_info(){}
//	protected:                                                                                 
//	    void display_info()                                                              
//	    { 
//		cout<<"\n\n ______________________________________________________Log-in__________________________________________________________ \n\n";                                                                               
//	    call();                                                                          
//		data_frm_ht();
//		string input;
//		int attempt = 0;
//		while (attempt<5)
//		{
//		cout<<"\n\n\n Do you want to know the nos of patients coming to different labs(y/n) :";
//		cin>>input;
//		if ((input == "y") || (input == "Y"))
//		{
//		cout<<"\n Total number of patients coming to the different labs are\n\
// \n lab Ayur Tests:- "<<A_total_patients;
//		cout<<"\n Sanjeevni Lab.:- "<<B_total_patients;
//		cout<<"\n Bhagwati diagnostics:- "<<C_total_patients;
//		break;
//	    }
//	    else if ((input == "n") || (input == "N"))
//	    {
//	    	cout<<"\n";
//	    	break;
//		}
//		else
//		{
//			cout<<"\n \"Wrong input please put either (y or n)\"";
//	    	attempt++;
//		}
//	    }
//		timeSlots();
//		call_1();
//	    }
//    // Abstraction & Encapsulation                                       
//	private:                                                                                    
//		long long int ph_num,h_num;
//		int age;                                   
//		float DNA_enzyme,RNA_enzyme,nucleotide;                     
//		void registration()                                          
//		{    
//		 ofstream dbms;
//		 dbms.open("database.txt",ios_base::app);
//		    char f_name[100],name[100],time[100],city[100],address[100];                                           
//			cout<<"\n\n\n ____________________________________________ Patient registration forum _____________________________________________"; 
//			cout<<"\n\n\n Enter your name: ";                      
//		    cin.ignore(); 
//			cin.getline(name,100);                                  
//			dbms<<name<<endl;
//			cout<<"\n Enter your fathers name: ";                
//		    cin.ignore(); 
//			cin.getline(f_name,100);
//			dbms<<f_name<<endl;
//			cout<<"\n Enter your city & state name: ";      //cin.ignore() before and after and cin.clear()  Ask mam.      
//			cin.ignore();
//			cin.getline(city,100);                                                                 
//			dbms<<city<<endl;
//			cout<<"\n Time alloted to you: ";        
//		    cin.ignore();
//			cin.getline(time,100); 
//			dbms<<time<<endl;
//			cout<<"\n Enter your address: ";          
//			cin.ignore();
//			cin.getline(address,100);                                                            
//			dbms<<address<<endl;
//		do 
//		{
//			try
//			{
//			cout<<"\n Enter your age: ";                     
//			cin>>age;
//			dbms<<" "<<age<<endl;                                  
//			if ((90>= age >=65) || (122>= age >=97))  
//			{
//			throw 505;
//			}                                                     
//		    }
//			catch(int num)
//		    {
//		    	cerr<<"\n Invalid Input. Please enter valid input. Its runtime_error "<<num;
//			}
//	 }while(!(90>= age >=65));
//	 
//	        cout<<"\n Enter your phone number: ";          
//			cin>>ph_num;
//			dbms<<ph_num<<endl;  
//			dbms.close(); 
//			cout<<"\n\n Test: For Covid-Sars-19, Kindly submit Rs 2500/- to the counter desk";
//		}
//			     
//		void test()                                                                    
//		{                                                                                
//			float fluroscense = 15.6;                                                  
//			cout<<"\n\n\n\n ______________________________________________Lab, Test in progress ________________________________________________";                        
//			cout<<"\n\n\n\n Enter patient DNA enzyme %: ";                         
//			cin>>DNA_enzyme;                                                         
//			cout<<"\n Enter patient RNA enzyme %: ";                            
//			cin>>RNA_enzyme;
//			cout<<"\n Enter patient Nucleotide level: ";
//			cin>>nucleotide;
//	        cout<<"\n\n Fluroscense % in sample: "<<(3*DNA_enzyme/RNA_enzyme)-nucleotide<<" %\n"; 
//		    if (fluroscense == (3*DNA_enzyme/RNA_enzyme)-nucleotide)                              
//		    {                                                                                   
//		    	cout<<"\n Unable to identify, needs COVID-SARS_virus Retest";                  
//			}                                                                                 
//			else if (fluroscense >= (3*DNA_enzyme/RNA_enzyme)-nucleotide)
//			{
//		    	cout<<"\n\n Patient is NEGATIVE";
//			}
//		    else if (fluroscense <= (3*DNA_enzyme/RNA_enzyme)-nucleotide)            
//			{
//		    	cout<<"\n Patient is POSITIVE";                                            
//		        if ((3*DNA_enzyme/RNA_enzyme)-nucleotide > 90.6 )                          
//			    {                                                                         
//				cout<<"\n\n Patient is highly impacted with COVID-19";                   
//		        	string a,b;                                                     
//		        	a = "City Lab";                                                    
//	                b = "Sanjeevni Lab";                                            
//					string *x=&a,*y=&b,t;                                         
//					t = *x;                                                        
//					*x = *y;                                                       
//					*y = t;                                                       
//					cout<<"\n\n Our lab treats moderate patients, You can refer to: "<<b; 		
//			    }
//			}
//		}                                                                      
//	protected:                                                        
//	    void timeSlots()                                                     
//		{                                                                    
//			string morning[4] = {"9-10AM","10-11AM","11-12noon","12-1PM"};  
//			string evening[4] = {"2-3PM","3-4PM","4-5PM","5-6PM"};	      
//		}
//		void sms()
//		{
//			char y,n;
//			cout<<"\n\n Are you sure to send the sms(y/n):- ";
//			cin>>y;
//			if (y == 'y' || y == 'Y')
//			{
//				cout<<"\n Sms delivered successfully to all positive patients";
//			}
//			else
//			{
//				cout<<"\n Sms is not sent yet";
//			}
//	    }	                                                           
//		void call_1()                                                    
//		{                                                              
//			registration();                                            
//			test();                                                  
//		}
//};                                            
//class lab_info : public patient_info        
//{                                          
//	public: 
//	    void show()
//		{
//			operator --();
//    	}                             
//		void display_info()               
//		{                                
//			chemical();                
//		}                           
//	~lab_info(){}                           
//	protected:                      
//		void chemical()           
//		{		                  
//			string i;
//			std::map< string , string > chem_list;                                    
//			chem_list.insert(pair<string , string>("a","Acetaminophen (500 mL)"));
//			chem_list.insert(pair<string , string>("b","Baricitinib (350 mL)")); 
//			chem_list.insert(pair<string , string>("c","Camostat . mesylate (250 mL)")); 
//			chem_list.insert(pair<string , string>("d","Dolutegravir (260 mL)"));
//			chem_list.insert(pair<string , string>("e","Esomeprazole (100 mL)")); 
//			chem_list.insert(pair<string , string>("f","Favipiravir (370 mL)"));  
//			chem_list.insert(pair<string , string>("g","Acetaminophen (500 mL)"));
//			chem_list.insert(pair<string , string>("h","Haloperidol (300 mL)")); 
//			chem_list.insert(pair<string , string>("i","Indinavir (50 mL)")); 
//			chem_list.insert(pair<string , string>("j","No Chemical with this name")); 
//			chem_list.insert(pair<string , string>("k","No Chemical with this name"));
//			chem_list.insert(pair<string , string>("l","Lopinavir (125 mL)")); 
//			chem_list.insert(pair<string , string>("m","mitoxantrone (70 mL)")); 
//			chem_list.insert(pair<string , string>("n","Nitazoxanide (372 mL)"));
//			chem_list.insert(pair<string , string>("o","Oseltamivir phosphate (85 mL)")); 
//			chem_list.insert(pair<string , string>("p","Peramivir (150 mL)")); 
//			chem_list.insert(pair<string , string>("q","No Chemical with this name"));
//			chem_list.insert(pair<string , string>("r","Rosuvastatin calcium (100 mL)")); 
//			chem_list.insert(pair<string , string>("s","Sirolimus (185 mL)"));  
//			chem_list.insert(pair<string , string>("t","Thalidomide (550 mL)"));
//			chem_list.insert(pair<string , string>("u","Umifenovir (220 mL)")); 
//			chem_list.insert(pair<string , string>("v","velpatasvir (310 mL)")); 
//			chem_list.insert(pair<string , string>("w","No Chemical with this name")); 
//			chem_list.insert(pair<string , string>("x","No Chemical with this name"));
//			chem_list.insert(pair<string , string>("y","No Chemical with this name")); 
//			chem_list.insert(pair<string , string>("z","Zalcitabine (170 mL)")); 
//			   
//			 
//			cout<<"\n\n\n ______________________________________________ Chemicals in lab _____________________________________________________";                          
//		do
//		{	
//			cout<<"\n\n Enter any alphabet(a-z) & press E to stop:-";                            
//			cin>>i; 
//	  
//			if (i == "a")   {cout<<"\n "<<chem_list["a"];} 
//			if (i == "b")   {cout<<"\n "<<chem_list["b"];} 
//			if (i == "c")   {cout<<"\n "<<chem_list["c"];} 
//			if (i == "d")   {cout<<"\n "<<chem_list["d"];} 
//			if (i == "e")   {cout<<"\n "<<chem_list["e"];} 
//			if (i == "f")   {cout<<"\n "<<chem_list["f"];} 
//			if (i == "g")   {cout<<"\n "<<chem_list["g"];} 
//			if (i == "h")   {cout<<"\n "<<chem_list["h"];} 
//			if (i == "i")   {cout<<"\n "<<chem_list["i"];} 
//			if (i == "j")   {cout<<"\n "<<chem_list["j"];} 
//			if (i == "k")   {cout<<"\n "<<chem_list["k"];} 
//			if (i == "l")   {cout<<"\n "<<chem_list["l"];} 
//			if (i == "m")   {cout<<"\n "<<chem_list["m"];} 
//			if (i == "n")   {cout<<"\n "<<chem_list["n"];} 
//			if (i == "o")   {cout<<"\n "<<chem_list["o"];} 
//			if (i == "p")   {cout<<"\n "<<chem_list["p"];}
//			if (i == "q")   {cout<<"\n "<<chem_list["q"];} 
//			if (i == "r")   {cout<<"\n "<<chem_list["r"];} 
//			if (i == "s")   {cout<<"\n "<<chem_list["s"];} 
//			if (i == "t")   {cout<<"\n "<<chem_list["t"];} 
//			if (i == "u")   {cout<<"\n "<<chem_list["u"];} 
//			if (i == "v")   {cout<<"\n "<<chem_list["v"];} 
//			if (i == "w")   {cout<<"\n "<<chem_list["w"];} 
//			if (i == "x")   {cout<<"\n "<<chem_list["x"];} 
//			if (i == "y")   {cout<<"\n "<<chem_list["y"];} 
//			if (i == "z")   {cout<<"\n "<<chem_list["z"];}  
//	    }while(!(i == "E"));                                                                                                                                                       
//	        }
//	    void operator -(int un_reg)  
//	    { 
//	      total = total - un_reg;
//	      cout<<"\n Today's unregistered patients: "<<un_reg;
//	      cout<<"\n Data sent to Govt. :"<<total;
//		}
//		void Nos_of_test()
//	    {
//	    	int un_reg;
//	    	total = total - un_reg;
//	        cout<<"\n\n Total number of test done: "<<total;	
//		}
//		void test_kit()
//		{
//			int nos_of_test_kits;
//			cout<<"\n Enter number of test kits in your lab:- ";
//			cin>>nos_of_test_kits;
//			if (total == nos_of_test_kits)
//			{
//				cout<<"\n No need for extra kit";
//			}
//			else if (total > nos_of_test_kits)
//			{                                                                                               
//				cout<<"\n\n Contacting other labs for kits";                   
//		        	string a,b;                                                     
//		        	a = "City Lab";                                                    
//	                b = "Sanjeevni Lab";                                            
//					string *x=&a,*y=&b,t;                                         
//					t = *x;                                                        
//					*x = *y;                                                       
//					*y = t;                                                       
//					cout<<"\n\n Contact "<<b<<" or "<<a<<" for more kits."; 			
//			}
//			else
//			{
//				cout<<"\n No need for extra kit";
//			}
//		}
//	private:
//	void operator --()
//	{
//		lab_info obj1;
//		obj1.patient_info::display_info();
//		obj1.operator -(30);
//		obj1.Nos_of_test();
//		display_info();
//		test_kit();
//		cout<<"\n\n\n ______________________________________________ SMS Update ____________________________________________________________";
//		sms();
//		string input2;
//		int attempt2;
//		cout<<"\n\n\n ____________________________________________ Weekly Report of lab ____________________________________________________"; 
//		while(attempt2<5)
//		{
//		cout<<"\n\n\n Do you want to check weekly report(y/n) : ";
//		cin>>input2;
//		if (input2 == "y" || input2 == "Y")
//		{
//		string data;
//		ifstream repo;
//		repo.open("report.txt");
//		while(getline(repo,data))
//		{
//		cout<<"\n"<<data;
//		}
//		repo.close();
//		break;
//	    }
//	    else if (input2 == "n" || input2 == "N")
//	    {
//	    	cout<<"\n\n\t\t\t Ok Have a great day.";
//	    	exit(0);
//	    	break;
//		}
//		else
//		{
//			cout<<"\n\n Invalid Entry.Please enter (y/n)";
//			attempt2++;
//		}
//	}
//	} 
//};
//int main()                                    
//{     
//    system("Color C0");                                                   
//	lab_info obj1; 
//	obj1.show();                                              
//	return 0;                           
//}                                        
//       
//    
//        
// 

#include <iostream>
using namespace std;

void swap (int a, int b){
	int t;
	t = a;
	a = b;
	b = a;
}

int main()
{
	int x=20 , y=10;
	cout<<"b4 x:"<<x;
    cout<<"\nb4 y:"<<y;
    swap(x,y);
    cout<<"\n\nafter x:"<<x;
    cout<<"\nafter y:"<<y;
	return 0;
    }       
