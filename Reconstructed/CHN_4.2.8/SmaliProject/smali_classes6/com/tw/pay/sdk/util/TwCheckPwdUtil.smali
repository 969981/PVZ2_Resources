.class public Lcom/tw/pay/sdk/util/TwCheckPwdUtil;
.super Ljava/lang/Object;
.source "TwCheckPwdUtil.java"


# instance fields
.field private callback:Lcom/tw/pay/sdk/callback/TwCallback;

.field private checkPwdView:Landroid/view/View;

.field private clickListener:Landroid/view/View$OnClickListener;

.field private context:Landroid/content/Context;

.field private dialog:Landroid/app/Dialog;

.field private dialogView:Landroid/view/View;

.field private handler:Landroid/os/Handler;

.field private loginResultBean:Lcom/tw/pay/sdk/bean/LoginResultBean;

.field private newPwdEdt:Landroid/widget/EditText;

.field private pwd:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tw/pay/sdk/bean/LoginResultBean;Ljava/lang/String;)V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/tw/pay/sdk/util/TwCheckPwdUtil$1;

    invoke-direct {v0, p0}, Lcom/tw/pay/sdk/util/TwCheckPwdUtil$1;-><init>(Lcom/tw/pay/sdk/util/TwCheckPwdUtil;)V

    iput-object v0, p0, Lcom/tw/pay/sdk/util/TwCheckPwdUtil;->handler:Landroid/os/Handler;

    .line 90
    new-instance v0, Lcom/tw/pay/sdk/util/TwCheckPwdUtil$2;

    invoke-direct {v0, p0}, Lcom/tw/pay/sdk/util/TwCheckPwdUtil$2;-><init>(Lcom/tw/pay/sdk/util/TwCheckPwdUtil;)V

    iput-object v0, p0, Lcom/tw/pay/sdk/util/TwCheckPwdUtil;->clickListener:Landroid/view/View$OnClickListener;

    .line 69
    iput-object p1, p0, Lcom/tw/pay/sdk/util/TwCheckPwdUtil;->context:Landroid/content/Context;

    .line 70
    iput-object p2, p0, Lcom/tw/pay/sdk/util/TwCheckPwdUtil;->loginResultBean:Lcom/tw/pay/sdk/bean/LoginResultBean;

    .line 71
    iput-object p3, p0, Lcom/tw/pay/sdk/util/TwCheckPwdUtil;->pwd:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/tw/pay/sdk/util/TwCheckPwdUtil;)Landroid/widget/EditText;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/tw/pay/sdk/util/TwCheckPwdUtil;->newPwdEdt:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$100(Lcom/tw/pay/sdk/util/TwCheckPwdUtil;)Lcom/tw/pay/sdk/callback/TwCallback;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/tw/pay/sdk/util/TwCheckPwdUtil;->callback:Lcom/tw/pay/sdk/callback/TwCallback;

    return-object p0
.end method

.method static synthetic access$200(Lcom/tw/pay/sdk/util/TwCheckPwdUtil;)Landroid/app/Dialog;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/tw/pay/sdk/util/TwCheckPwdUtil;->dialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic access$300(Lcom/tw/pay/sdk/util/TwCheckPwdUtil;)Landroid/content/Context;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/tw/pay/sdk/util/TwCheckPwdUtil;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/tw/pay/sdk/util/TwCheckPwdUtil;)Landroid/view/View;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/tw/pay/sdk/util/TwCheckPwdUtil;->checkPwdView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$500(Lcom/tw/pay/sdk/util/TwCheckPwdUtil;)Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/tw/pay/sdk/util/TwCheckPwdUtil;->pwd:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/tw/pay/sdk/util/TwCheckPwdUtil;Ljava/lang/String;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/tw/pay/sdk/util/TwCheckPwdUtil;->initPassowrd(Ljava/lang/String;)V

    return-void
.end method

.method private getDialog(Landroid/content/Context;)Landroid/app/Dialog;
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwCheckPwdUtil;->dialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Landroid/app/Dialog;

    const-string v1, "MyDialog"

    invoke-static {p1, v1}, Lcom/tw/pay/sdk/tool/Resource;->getStyle(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/tw/pay/sdk/util/TwCheckPwdUtil;->dialog:Landroid/app/Dialog;

    .line 63
    :cond_0
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwCheckPwdUtil;->dialog:Landroid/app/Dialog;

    return-object p1
.end method

.method private initPassowrd(Ljava/lang/String;)V
    .locals 5

    .line 161
    new-instance v0, Lcom/talkweb/sdk/vo/InitPassword;

    invoke-direct {v0}, Lcom/talkweb/sdk/vo/InitPassword;-><init>()V

    .line 163
    iget-object v1, p0, Lcom/tw/pay/sdk/util/TwCheckPwdUtil;->loginResultBean:Lcom/tw/pay/sdk/bean/LoginResultBean;

    iget-object v1, v1, Lcom/tw/pay/sdk/bean/LoginResultBean;->userId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/talkweb/sdk/vo/InitPassword;->setUserId(Ljava/lang/Long;)V

    .line 165
    invoke-static {p1}, Lcom/talkweb/sdk/util/DigestUtil;->encodeByMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/talkweb/sdk/vo/InitPassword;->setPassword(Ljava/lang/String;)V

    .line 166
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwCheckPwdUtil;->loginResultBean:Lcom/tw/pay/sdk/bean/LoginResultBean;

    iget-object p1, p1, Lcom/tw/pay/sdk/bean/LoginResultBean;->token:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/talkweb/sdk/vo/InitPassword;->setToken(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v0}, Lcom/talkweb/sdk/vo/InitPassword;->toJson()Ljava/lang/String;

    move-result-object p1

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/tw/pay/sdk/TwPaySetting;->appKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/sdk/util/DigestUtil;->encodeByMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 171
    :try_start_0
    invoke-static {p1}, Lcom/talkweb/sdk/util/Des;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 173
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    move-object p1, v1

    .line 175
    :goto_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 176
    invoke-static {}, Lcom/tw/pay/sdk/TwPaySetting;->getHead()Lcom/talkweb/sdk/vo/Head;

    move-result-object v3

    invoke-virtual {v3}, Lcom/talkweb/sdk/vo/Head;->encode()Ljava/lang/String;

    move-result-object v3

    const-string v4, "head"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "initPassword"

    .line 177
    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "md5"

    .line 178
    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    new-instance p1, Lcom/tw/pay/sdk/net/HttpDataNet;

    invoke-direct {p1}, Lcom/tw/pay/sdk/net/HttpDataNet;-><init>()V

    .line 182
    :try_start_1
    invoke-virtual {p1, v2}, Lcom/tw/pay/sdk/net/HttpDataNet;->initNewPwd(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    .line 183
    new-instance v0, Lcom/talkweb/sdk/vo/ReturnObject;

    invoke-direct {v0}, Lcom/talkweb/sdk/vo/ReturnObject;-><init>()V

    invoke-virtual {v0, p1}, Lcom/talkweb/sdk/vo/ReturnObject;->decode(Ljava/lang/String;)Lcom/talkweb/sdk/vo/BaseVO;

    move-result-object p1

    check-cast p1, Lcom/talkweb/sdk/vo/ReturnObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 185
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 187
    :goto_1
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwCheckPwdUtil;->handler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private selectShowView()V
    .locals 3

    .line 122
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwCheckPwdUtil;->checkPwdView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 124
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwCheckPwdUtil;->dialogView:Landroid/view/View;

    iget-object v1, p0, Lcom/tw/pay/sdk/util/TwCheckPwdUtil;->context:Landroid/content/Context;

    const-string v2, "closeImg"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    .line 125
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 127
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwCheckPwdUtil;->checkPwdView:Landroid/view/View;

    iget-object v1, p0, Lcom/tw/pay/sdk/util/TwCheckPwdUtil;->context:Landroid/content/Context;

    const-string v2, "newPwdEdt"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/tw/pay/sdk/util/TwCheckPwdUtil;->newPwdEdt:Landroid/widget/EditText;

    .line 130
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwCheckPwdUtil;->dialogView:Landroid/view/View;

    iget-object v1, p0, Lcom/tw/pay/sdk/util/TwCheckPwdUtil;->context:Landroid/content/Context;

    const-string v2, "changePwdTxt"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/tw/pay/sdk/util/TwCheckPwdUtil;->clickListener:Landroid/view/View$OnClickListener;

    .line 131
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwCheckPwdUtil;->checkPwdView:Landroid/view/View;

    iget-object v1, p0, Lcom/tw/pay/sdk/util/TwCheckPwdUtil;->context:Landroid/content/Context;

    const-string v2, "startGameBtn"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/tw/pay/sdk/util/TwCheckPwdUtil;->clickListener:Landroid/view/View$OnClickListener;

    .line 134
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwCheckPwdUtil;->checkPwdView:Landroid/view/View;

    iget-object v1, p0, Lcom/tw/pay/sdk/util/TwCheckPwdUtil;->context:Landroid/content/Context;

    const-string v2, "titleTxt"

    .line 137
    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 136
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 139
    iget-object v1, p0, Lcom/tw/pay/sdk/util/TwCheckPwdUtil;->context:Landroid/content/Context;

    const-string v2, "one_key_register"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwCheckPwdUtil;->checkPwdView:Landroid/view/View;

    iget-object v1, p0, Lcom/tw/pay/sdk/util/TwCheckPwdUtil;->context:Landroid/content/Context;

    const-string v2, "accountNameTxt"

    .line 142
    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 141
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 144
    iget-object v1, p0, Lcom/tw/pay/sdk/util/TwCheckPwdUtil;->loginResultBean:Lcom/tw/pay/sdk/bean/LoginResultBean;

    iget-object v1, v1, Lcom/tw/pay/sdk/bean/LoginResultBean;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwCheckPwdUtil;->checkPwdView:Landroid/view/View;

    iget-object v1, p0, Lcom/tw/pay/sdk/util/TwCheckPwdUtil;->context:Landroid/content/Context;

    const-string v2, "accountPwdTxt"

    .line 147
    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 146
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 148
    iget-object v1, p0, Lcom/tw/pay/sdk/util/TwCheckPwdUtil;->pwd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public doCheckPwdDialog(Lcom/tw/pay/sdk/callback/TwCallback;)V
    .locals 3

    .line 76
    iput-object p1, p0, Lcom/tw/pay/sdk/util/TwCheckPwdUtil;->callback:Lcom/tw/pay/sdk/callback/TwCallback;

    .line 77
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwCheckPwdUtil;->context:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 78
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwCheckPwdUtil;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/tw/pay/sdk/util/TwCheckPwdUtil;->getDialog(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/tw/pay/sdk/util/TwCheckPwdUtil;->dialog:Landroid/app/Dialog;

    .line 79
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwCheckPwdUtil;->context:Landroid/content/Context;

    const-string v1, "dialog_port"

    invoke-static {v0, v1}, Lcom/tw/pay/sdk/tool/Resource;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/tw/pay/sdk/util/TwCheckPwdUtil;->context:Landroid/content/Context;

    const-string v2, "dialog"

    .line 80
    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 79
    invoke-static {p1, v0, v1}, Lcom/tw/pay/sdk/tool/Tools;->setSDKDialogScreen(Landroid/view/LayoutInflater;II)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/tw/pay/sdk/util/TwCheckPwdUtil;->dialogView:Landroid/view/View;

    .line 82
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwCheckPwdUtil;->context:Landroid/content/Context;

    const-string v1, "checkPwdView"

    invoke-static {v0, v1}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/tw/pay/sdk/util/TwCheckPwdUtil;->checkPwdView:Landroid/view/View;

    .line 84
    invoke-direct {p0}, Lcom/tw/pay/sdk/util/TwCheckPwdUtil;->selectShowView()V

    .line 85
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwCheckPwdUtil;->dialog:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwCheckPwdUtil;->dialogView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 86
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwCheckPwdUtil;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 87
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwCheckPwdUtil;->dialog:Landroid/app/Dialog;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    return-void
.end method

.method public setNewPwd(Ljava/lang/String;)V
    .locals 1

    .line 153
    new-instance v0, Lcom/tw/pay/sdk/util/TwCheckPwdUtil$3;

    invoke-direct {v0, p0, p1}, Lcom/tw/pay/sdk/util/TwCheckPwdUtil$3;-><init>(Lcom/tw/pay/sdk/util/TwCheckPwdUtil;Ljava/lang/String;)V

    .line 157
    invoke-virtual {v0}, Lcom/tw/pay/sdk/util/TwCheckPwdUtil$3;->start()V

    return-void
.end method
