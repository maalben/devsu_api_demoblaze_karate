function fn() {

		var config = {
			baseURL : 'https://api.demoblaze.com'

		}

		var env = karate.env
		// karate.log('Env is : ',env )

		if (!env) {
            config.baseURL = 'https://api.demoblaze.com'
        }


	if(env == 'qa'){
		    config.baseURL = 'https://api.demoblaze.com/qa'
		}

		else if(env == 'dev'){
			config.baseURL = 'https://api.demoblaze.com/dev'
		}

		else{
			config.baseURL = 'https://api.demoblaze.com'
		}

		karate.configure('connectTimeout', 5000);
		karate.configure('readTimeout', 5000);

		//var result = karate.callSingle('classpath:tests/GetUserID.feature')
		//config.userID = result.id;
		return config;

}