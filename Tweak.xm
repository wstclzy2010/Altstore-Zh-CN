%hook UILabel
//显示不完整，不卡死，格式正确- (BOOL) isEnabled
//显示完整，不卡死，但是格式不对- (void) drawRect:(struct CGRect)arg1

- (void)drawRect:(struct CGRect)arg1
{
	%orig;
		
	if([[self text] isEqualToString:@"No Updates Available"])
		self.text = @"暂无可用更新";

	if([[self text] isEqualToString:@"Installed"])
		self.text = @"已安装的应用";

	if([[self text] isEqualToString:@"Expires in"])
	{
		self.text = @"  有效期剩余：";
		self.textAlignment = NSTextAlignmentCenter;
	}

	if([[self text] isEqualToString:@"Could not find AltServer."])
		self.text = @"没有找到AltServer";

	if([[self text] isEqualToString:@"ACCOUNT"])
		self.text = @"账户";

	if([[self text] isEqualToString:@"Sign in with Apple ID"])
		self.text = @"使用苹果账户登录";

	if([[self text] isEqualToString:@"Sign in with your Apple ID to download apps from AltStore."])
		self.text = @"登录后可使用Altstore下载应用";

	if([[self text] isEqualToString:@"PATREON"])
		self.text = @"捐赠";

	if([[self text] isEqualToString:@"REFRESHING APPS"])
		self.text = @"重签名应用";

	if([[self text] isEqualToString:@"Background Refresh"])
		self.text = @"后台自动重签名";

	if([[self text] isEqualToString:@"How it works"])
	{
		if([[self nextResponder] isMemberOfClass:%c(_UINavigationBarLargeTitleView)])
		{
			self.text = @"自签名工作方法";
			self.textColor = [UIColor whiteColor];
			self.font = [UIFont boldSystemFontOfSize:20];
		}
		else
			self.text = @"自签名工作方法";
	}
		

	if([[self text] isEqualToString:@"Enable Background Refresh to automatically refresh apps in the background when connected to the same WiFi as AltServer."])
		self.text = @"当和AltServer处于同一wifi下时自动重签名应用";

	if([[self text] isEqualToString:@"CREDITS"])
		self.text = @"鸣谢";

	if([[self text] isEqualToString:@"SIGN OUT"])
		self.text = @"退出登录";
	
	if([[self text] isEqualToString:@"DEBUG"])
		self.text = @"调试";
	
	if([[self text] isEqualToString:@"Are you sure you want to sign out?"])
		self.text = @"确定要退出登录？";
	
	if([[self text] isEqualToString:@"You will no longer be able to install or refresh apps once you sign out."])
		self.text = @"退出登录后将无法安装和签名应用";
	
	if([[self text] isEqualToString:@"Sign Out"])
		self.text = @"登出";
	
	if([[self text] isEqualToString:@"Cannot Send Mail"])
		self.text = @"无法发送邮件";
	
	if([[self text] isEqualToString:@"Each app and app extension installed with AltStore must register an App ID with Apple. Apple limits free developer accounts to 10 App IDs at a time. App IDs can't be deleted, but they do expire after one week. AltStore will automatically renew App IDs for all active apps once they've expired."])
		self.text = @"通过AltStore安装的每个应用程序和应用程序扩展程序都必须在Apple中注册一个App ID。 Apple将免费的帐户限制为10个App ID。App ID无法删除，但它们会在一周后过期。 所有活跃的应用程序过期后，AltStore都会自动为它们更新App ID。";
	
	if([[self text] isEqualToString:@"Each app and app extension installed with AltStore must register an App ID with Apple. App IDs for paid developer accounts never expire, and there is no limit to how many you can create."])
		self.text = @"与AltStore一起安装的每个应用程序和应用程序扩展程序都必须在Apple中注册一个应用程序ID。付费开发者帐户的应用程序ID永不过期，可以创建的数量没有限制。";

	if([[self text] isEqualToString:@"Success"])
		self.text = @"成功";
	
	if([[self text] isEqualToString:@"Failure"])
		self.text = @"失败";
	
	if([[self text] isEqualToString:@"No Refresh Attempts"])
		self.text = @"没有重签名记录";

	if([[self text] isEqualToString:@"The more you use AltStore, the more often iOS will allow it to refresh apps in the background."])
		self.text = @"使用AltStore的次数越多，后台重签应用的频率越大。 ";
	
	if([[self text] isEqualToString:@"Welcome to AltStore."])
		self.text = @"欢迎使用AltStore";

	if([[self text] isEqualToString:@"Sign in with your Apple ID to get started."])
		self.text = @"登录你的Apple ID以开始使用";
	
	if([[self text] isEqualToString:@"PASSWORD"])
		self.text = @"密码";
	
	if([[self text] isEqualToString:@"Sign in"])
		self.text = @"登录";
	
	if([[self text] isEqualToString:@"Why do we need this?"])
		self.text = @"为什么需要登录Apple ID";
	
	if([[self text] isEqualToString:@"Your Apple ID is used to configure apps so they can be installed on this device. Your credentials will be stored securely in this device's Keychain and sent only to Apple for authentication."])
		self.text = @"您的Apple ID用于配置应用程序，以便可以将其安装在此设备上。您的凭据将安全地存储在此设备的钥匙串中，并且仅发送给Apple进行身份验证。";
	
	if([[self text] isEqualToString:@"Launch AltServer"])
		self.text = @"启动AltServer";
	
	if([[self text] isEqualToString:@"Leave AltServer running in the background on your computer."])
		self.text = @"使AltServer在电脑端的后台运行，并启动Mail plug-in";
	
	if([[self text] isEqualToString:@"Connect to WiFi"])
		self.text = @"连接到WiFi";
	
	if([[self text] isEqualToString:@"Enable iTunes WiFi Sync and connect to the same WiFi as AltServer."])
		self.text = @"启用iTunes WiFi Sync并连接到与AltServer相同的WiFi。";
	
	if([[self text] isEqualToString:@"Download Apps"])
		self.text = @"下载应用";
	
	if([[self text] isEqualToString:@"Browse and download apps directly from AltStore."])
		self.text = @"直接从AltStore浏览和下载应用程序。";
	
	if([[self text] isEqualToString:@"Apps Refresh Automatically"])
		self.text = @"自动重签名应用";
	
	if([[self text] isEqualToString:@"Apps are refreshed in the background when on same WiFi as AltServer."])
		self.text = @"与AltServer使用相同的WiFi时，应用程序会自动在后台重签名。";
	
	if([[self text] isEqualToString:@"Got it"])
		self.text = @"明白";
	
	if([[self text] isEqualToString:@"Refresh Now"])
		self.text = @"现在签名";
	
	if([[self text] isEqualToString:@"Refresh Later"])
		self.text = @"稍后重签";
	
	if([[self text] isEqualToString:@"Failed to Log In"])
		self.text = @"登录失败";
	
	if([[self text] isEqualToString:@"News"])
	{
		if([[self nextResponder] isMemberOfClass:%c(_UINavigationBarLargeTitleView)])
		{
			self.text = @"新闻";
			self.font = [UIFont boldSystemFontOfSize:30];
			self.textAlignment = NSTextAlignmentLeft;
		}
		else if([[self nextResponder] isMemberOfClass:%c(_UINavigationBarContentView)])
		{
			self.text = @"新闻";
			self.font = [UIFont boldSystemFontOfSize:17];
			self.textAlignment = NSTextAlignmentCenter;
		}
	}
	
	if([[self text] isEqualToString:@"Could not connect to Mail plug-in."])
		self.text = @"无法连接到Mail plug-in";

	if([[self text] isEqualToString:@"View App IDs"])
	{
		self.text = @"查看App ID";
		self.textAlignment = NSTextAlignmentCenter;
	}
		
	if([[self text] isEqualToString:@"Name"])
		self.text = @"名称";
	
	if([[self text] isEqualToString:@"Email"])
		self.text = @"邮箱";

	if([[self text] isEqualToString:@"Type"])
		self.text = @"类型";
	
	if([[self text] isEqualToString:@"Free Developer Account"])
		self.text = @"免费账号";
	
	if([[self text] isEqualToString:@"Join the beta"])
		self.text = @"参与Beta版测试";
	
	if([[self text] isEqualToString:@"Receive access to beta versions of AltStore, Delta, and more by becoming a patron."])
		self.text = @"加入Patron赞助，即可参与测试AltStore，Delta等Beta版。";
	//return %orig;

	if([[self text] isEqualToString:@"USER APPLICATIONS"])
		self.text = @"用户应用";

	if([[self text] isEqualToString:@"Developer"])
		self.text = @"开发人员";
	
	if([[self text] isEqualToString:@"Designer"])
		self.text = @"设计人员";

	if([[self text] isEqualToString:@"Licenses"])
		self.text = @"许可证书";

	if([[self text] isEqualToString:@"Send Feedback"])
		self.text = @"发送反馈";
	
	if([[self text] isEqualToString:@"View Refresh Attempts"])
		self.text = @"签名记录";
	
	if([[self text] isEqualToString:@"Refresh Attempts"])
	{
		self.text = @"签名记录";
		self.textColor = [UIColor whiteColor];
	}

	if([[self text] isEqualToString:@"FREE"])
		self.text = @"免 费";


}

%end


