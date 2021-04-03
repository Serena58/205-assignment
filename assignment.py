from flask import Flask, render_template, redirect, url_for,request
import pymysql

db= pymysql.connect(
	host="localhost",
	user="root",
	password="",
	database="assignment")

app=Flask(__name__)

@app.route('/')
def index():
	return render_template('index.html')

@app.route('/index.html')
def back():
    return render_template('index.html')

'''login fail'''

@app.route('/login_fail.html')
def FailLogin():
	return render_template('login_fail.html')	

'''customer 
- modify item
- shopping cart
- update privacy
'''
 
@app.route('/customer.html')
def CS_login():
    return render_template('customer.html')

@app.route('/customer',methods =['post'])
def CustomerModify():
	if request.method =='POST':
		E1_quantity=request.form['E1_quantity']
		E2_quantity=request.form['E2_quantity']
		D1_quantity=request.form['D1_quantity']
		D2_quantity=request.form['D2_quantity']

		cursor=db.cursor()
		if E1_quantity !="":
			cursor.execute("INSERT INTO customer_order(`customer_id`,`item code`,\
				`quantity`) VALUES ('4','ear001',%s)",[E1_quantity])
			db.commit()
			print("insert ear001 successfully!")

		if E2_quantity!="":
			cursor.execute("INSERT INTO customer_order(`customer_id`,`item code`,\
				`quantity`) VALUES  ('4','ear002',%s)",[E2_quantity])
			db.commit()
			print("insert ear002 successfully!")

		if D1_quantity!="":
			cursor.execute("INSERT INTO customer_order(`customer_id`,`item code`,\
				`quantity`) VALUES  ('4','dress001',%s)",[D1_quantity])
			db.commit()
			print("insert dress001 successfully!")

		if D2_quantity!="":
			cursor.execute("INSERT INTO customer_order(`customer_id`,`item code`,\
				`quantity`) VALUES  ('4','dress002',%s)",[D2_quantity])
			db.commit()
			print("insert dress002 successfully!")
		else:
			print ("nothing changed")

		db.close()
	return render_template('customer.html')
	'''
	if request.method =='POST':
		E1_quantity=request.form['E1_quantity']
		E2_quantity=request.form['E2_quantity']
		D1_quantity=request.form['D1_quantity']
		D2_quantity=request.form['D2_quantity']

		cursor=db.cursor()
		cursor.execute("INSERT INTO customer_order(customer_id,item code,quantity) VALUES (%s,%s,%s)", [customer_id,item code,E1_quantity,])
		db.commit()
'''
#CS_privacy	

@app.route('/CS_privacy.html')
def CS_privacy():
	return render_template('CS_privacy.html')

@app.route('/CS_updatePrivacy',methods =['post'])
def CS_UpdateP():
	if request.method=='POST':
		username = request.form['customer_name']
		gender =request.form['gender']
		Contact =request.form['contact']
		CS_login =request.form['login_name']
		CS_PW =request.form['login_Password']

		cursor = db.cursor()

		cursor.execute("Update customer_login set customer_name=%s where customer_id ='4'", [username])
		db.commit()

		cursor.execute("Update customer_login set gender=%s where customer_id ='4'", [gender])
		db.commit()

		cursor.execute("Update customer_login set LoginName=%s where customer_id ='4'", [CS_login])
		db.commit()

		cursor.execute("Update customer_login set Password =%s where customer_id ='4'", [CS_PW])
		db.commit()

		cursor.execute("Update customer_login set Contact =%s where customer_id ='4'", [Contact])
		db.commit()

		print("successfully update")
		db.close()
		return render_template('customer.html',name=username)

#CS_shoppingcart

@app.route('/CS_shoppingCart.html')
def CS_shoppingCart():
	return redirect(url_for('CS_shoppingCart'))

@app.route('/CS_shoppingCart')
def shoppingCart():
	cursor=db.cursor()

	cursor.execute("SELECT * from customer_order where customer_id='4'")
	ShoppingCart= cursor.fetchall()
	db.commit()
	for row in ShoppingCart:
		print(row,'\n')
	db.close()

	return render_template('CS_shoppingCart.html', shoppingCart=ShoppingCart)

'''
admin
- modify item
-update privacy
'''

@app.route('/admin.html')
def AD_login():
    return render_template('admin.html')

@app.route('/admin',methods =['post'])
def AdminModify():
	if request.method =='POST':
		E1_quantity=request.form['E1_quantity']
		E2_quantity=request.form['E2_quantity']
		D1_quantity=request.form['D1_quantity']
		D2_quantity=request.form['D2_quantity']

		cursor=db.cursor()
		cursor.execute("Update inventory set quantity=%s where item_code ='ear001'", [E1_quantity])
		db.commit()

		cursor.execute("Update inventory set quantity=%s where item_code ='ear002'", [E2_quantity])
		db.commit()

		cursor.execute("Update inventory set quantity=%s where item_code ='dress001'", [D1_quantity])
		db.commit()

		cursor.execute("Update inventory set quantity=%s where item_code ='dress001'", [D2_quantity])
		db.commit()

		db.close()
		return render_template('admin.html')

#update AD_privacy
@app.route('/AD_privacy.html')
def AD_privacy():
    return render_template('AD_privacy.html')

@app.route('/AD_Updateprivacy',methods =['post'])
def AD_UpdateP():
	if request.method=='POST':
		username = request.form['admin_name']
		gender =request.form['gender']
		AD_login =request.form['AD_loginName']
		AD_PW =request.form['AD_Password']

		
		cursor = db.cursor()
		cursor.execute("Update admin_login set admin_name=%s where Admin_id ='AD004'", [username])
		db.commit()

		cursor.execute("Update admin_login set gender=%s where Admin_id ='AD004'", [gender])
		db.commit()

		cursor.execute("Update admin_login set LoginName=%s where Admin_id ='AD004'", [AD_login])
		db.commit()

		cursor.execute("Update admin_login set Password =%s where Admin_id ='AD004'", [AD_PW])
		db.commit()
	
		print("successfully update")
		return render_template('admin.html',name=username)

'''
sign up
'''

@app.route('/signup_cs.html')
def signup_cs():
	return render_template('signup_cs.html')	


@app.route('/signup',methods =['post'])
def signup():
	if request.method=='POST':
		username = request.form['customer_name']
		gender =request.form['gender']
		Contact =request.form['contact']
		CS_login =request.form['login_name']
		CS_PW =request.form['login_Password']

		cursor = db.cursor()
		cursor.execute("INSERT INTO customer_login(customer_name,gender,\
			LoginName,Password,Contact) VALUES (%s,%s,%s,%s,%s)",\
			 [username,gender,CS_login,CS_PW,Contact,])
		db.commit()
		return redirect(url_for('signup_cs'))
	else:
		print ("error")
'''
login
'''

@app.route('/login.html')
def loginA():
	return render_template('login.html')

@app.route('/login', methods=['GET','POST'])
def login():
	if request.method =='POST':
		if 'loginName' in request.form and 'loginPassword' in request.form:
			loginName =request.form['loginName']
			loginPW =request.form['loginPassword']

			cursor = db.cursor()

			cursor.execute("SELECT * from customer_login where LoginName=%s AND Password=%s",(loginName,loginPW))
			customer= cursor.fetchall()
			print (customer)
			db.commit()

			for row in customer:
				if row[3] == loginName and row[4] == loginPW:
					return render_template('customer.html',name=row[1])
				else:
					return render_template('login_fail.html')

			cursor.execute("SELECT * from admin_login where LoginName=%s AND Password=%s",(loginName,loginPW))
			admin= cursor.fetchall()
			print (admin)
			db.commit()

			for row in admin:
				if row[3] == loginName and row[4] == loginPW:
					return render_template('admin.html',name=row[1])
				else:
					return render_template('login_fail.html')
	return render_template('login.html')

if __name__ == '__main__':
	app.debug = True
	app.run(host="0.0.0.0",port="8000")

