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
		cursor.execute("Update customer_login set customer_name=%s where customer_id ='3'", [username])
		db.commit()

		cursor.execute("Update customer_login set gender=%s where customer_id ='3'", [gender])
		db.commit()

		cursor.execute("Update customer_login set LoginName=%s where customer_id ='3'", [CS_login])
		db.commit()

		cursor.execute("Update customer_login set Password =%s where customer_id ='3'", [CS_PW])
		db.commit()

		cursor.execute("Update customer_login set Contact =%s where customer_id ='3'", [Contact])
		db.commit()

		print("successfully update")
		db.close()
		return redirect(url_for('CS_login'))

#CS_shoppingcart

@app.route('/CS_shoppingCart.html')
def CS_shoppingCart():
    return render_template('CS_shoppingCart.html')

'''admin
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

'''
		cursor.execute("select admin_name from admin_login where admin_id='AD004'")
		AD_name=cursor.fetchone()
		db.commit()
'''

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
		return render_template('admin.html')

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
		cursor.execute("INSERT INTO customer_login(customer_name,gender,LoginName,Password,Contact) VALUES (%s,%s,%s,%s,%s)", [username,gender,CS_login,CS_PW,Contact,])
		db.commit()
		return redirect(url_for('signup_cs'))
		db.close()
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
	if request.method=='POST':
		login =request.form['loginName']
		PW =request.form['loginPassword']

		cursor = db.cursor()
		cursor.execute("select customer_name from customer_login where customer_id='3'")
		CS_name=cursor.fetchone()
		db.commit()

		cursor.execute("select admin_name from admin_login where admin_id='AD004'")
		AD_name=cursor.fetchone()
		db.commit()

		if request.form['loginName'] == 'admin' or request.form['loginPassword'] =='admin':
			return render_template('admin.html', name=AD_name)
		elif request.form['loginName'] =='customer' or request.form['loginPassword'] =='customer':
			return render_template('customer.html', name=CS_name)
		else:
			return render_template('login_fail.html')

	return render_template('login.html')
'''
@app.route('/login', methods=['GET','POST'])
def login():
	error=None
	msg = ''
    if request.method == 'POST' and 'login_name' in request.form and 'login_Password' in request.form :
	        CS_login = request.form['login_name']
	        CS_PW = request.form['login_Password']

	        cursor = db.cursor()
	        cursor.execute('SELECT * FROM customer_name WHERE LoginName = % s AND Password = % s', (username, password, ))
	        account = cursor.fetchone()
	        if account:
	            session['loggedin'] = True
	            session['id'] = account['id']
	            session['username'] = account['username']
	            msg = 'Logged in successfully !'
	            return render_template('customer.html', msg = msg)
	        else:
	            msg = 'Incorrect username / password !'
	        db.commit()
    return render_template('login.html', msg = msg)
	

	if request.method=='POST':
		username = request.form['customer_name']
		gender =request.form['gender']
		Contact =request.form['contact']
		CS_login =request.form['login_name']
		CS_PW =request.form['login_Password']

		if request.form['username'] != 'admin' or request.form['password'] !='admin':
			error = 'invalid input'
		else:
			return redirect(url_for('admin'))
	return render_template('login.html',error=error)

'''


if __name__ == '__main__':
	app.debug = True
	app.run(host="0.0.0.0",port="8000")

