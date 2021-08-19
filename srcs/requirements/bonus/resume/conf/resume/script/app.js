new Vue({
	el: '.app',
	data: {
		homePage: true,
		aboutPage: false,
		resumePage: false,
		contactPage: false,
		skills: [
			'trainee',
			'junior',
			'apprentice'
		],
		string: '',
		num: 0,
	},
	mounted: function () {
		this.showString();
	},
	methods: {
		showHomePage: function() {
			if(this.homePage == false) {
				this.homePage = true;
				this.showString();
			}
			this.aboutPage = false;
			this.resumePage = false;
			this.contactPage = false;
		},
		showAboutPage: function() {
			this.homePage = false;
			this.aboutPage = true;
			this.resumePage = false;
			this.contactPage = false;
		},
		showResumePage: function() {
			this.homePage = false;
			this.aboutPage = false;
			this.resumePage = true;
			this.contactPage = false;
		},
		showContactPage: function() {
			this.homePage = false;
			this.aboutPage = false;
			this.resumePage = false;
			this.contactPage = true;
		},
		activePage: function(str) {
			if(str == "homePage" && this.homePage) {
				return("a__active")
			} if(str == "aboutPage" && this.aboutPage) {
				return("a__active")
			} if(str == "resumePage" && this.resumePage) {
				return("a__active")
			} if(str == "contactPage" && this.contactPage) {
				return("a__active")
			}
		},
		pause: function(len, direction) {
			setTimeout(() => {
				if(direction) {
					this.num++;
					this.showString();
				} else if(!direction) {
					this.delString(len);
				}
			}, 2000)
		},
		addString: function(str, len) {
			let index = 0;
			let typeText = setInterval(() => {
				if(this.homePage) {
					if(index < len) {
					this.string += str[index];
					index++;
					} 
					if(index == len) {
						clearInterval(typeText);
						this.pause(len, 0);
					}
				} else {
					clearInterval(typeText);
					this.string = '';
				}
			}, 300)
		},
		delString: function(len) {
			let delText = setInterval(() => {
				if(len > 0) {
					this.string = this.string.slice(0, -1);
					len--;
				} else if(len == 0) {
					clearInterval(delText);
					this.pause(len, 1);
				}
			}, 50)
		},
		showString: function() {
			if(this.num == this.skills.length) {
				this.num = 0;
			}
			this.addString(this.skills[this.num], this.skills[this.num].length);
		},
	}
})