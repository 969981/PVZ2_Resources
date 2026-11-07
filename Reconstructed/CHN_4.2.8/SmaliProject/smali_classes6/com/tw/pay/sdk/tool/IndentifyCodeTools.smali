.class public Lcom/tw/pay/sdk/tool/IndentifyCodeTools;
.super Ljava/lang/Object;
.source "IndentifyCodeTools.java"


# instance fields
.field private callback:Lcom/tw/pay/sdk/callback/TwCallback;

.field private context:Landroid/content/Context;

.field private dialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/tw/pay/sdk/tool/IndentifyCodeTools;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/tw/pay/sdk/tool/IndentifyCodeTools;)Lcom/tw/pay/sdk/callback/TwCallback;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/tw/pay/sdk/tool/IndentifyCodeTools;->callback:Lcom/tw/pay/sdk/callback/TwCallback;

    return-object p0
.end method

.method static synthetic access$100(Lcom/tw/pay/sdk/tool/IndentifyCodeTools;)Landroid/app/Dialog;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/tw/pay/sdk/tool/IndentifyCodeTools;->dialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic access$200(Lcom/tw/pay/sdk/tool/IndentifyCodeTools;)Landroid/content/Context;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/tw/pay/sdk/tool/IndentifyCodeTools;->context:Landroid/content/Context;

    return-object p0
.end method

.method private getIndentifyCodeUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 34
    new-instance v0, Ljava/lang/StringBuffer;

    sget-object v1, Lcom/tw/pay/sdk/net/HttpUrl;->web_url:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-wide v2, Lcom/tw/pay/sdk/TwPaySetting;->appId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/tw/pay/sdk/TwPaySetting;->appKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tw/pay/sdk/tool/DigestUtil;->encodeByMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/sdk-api/identify/genIdentifyCodeImg"

    .line 37
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "?appId="

    .line 38
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-wide v2, Lcom/tw/pay/sdk/TwPaySetting;->appId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v2, "&loginIdentity="

    .line 39
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "&md5="

    .line 40
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private showDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 47
    new-instance p1, Landroid/app/Dialog;

    iget-object v0, p0, Lcom/tw/pay/sdk/tool/IndentifyCodeTools;->context:Landroid/content/Context;

    const-string v1, "MyDialog"

    invoke-static {v0, v1}, Lcom/tw/pay/sdk/tool/Resource;->getStyle(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-direct {p1, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/tw/pay/sdk/tool/IndentifyCodeTools;->dialog:Landroid/app/Dialog;

    .line 48
    iget-object p1, p0, Lcom/tw/pay/sdk/tool/IndentifyCodeTools;->context:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 50
    sget-boolean v0, Lcom/tw/pay/sdk/TwPaySetting;->isLandScape:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/tw/pay/sdk/tool/IndentifyCodeTools;->context:Landroid/content/Context;

    const-string v2, "indentify_dialog_land"

    .line 52
    invoke-static {v0, v2}, Lcom/tw/pay/sdk/tool/Resource;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 51
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/tw/pay/sdk/tool/IndentifyCodeTools;->context:Landroid/content/Context;

    const-string v2, "indentify_dialog"

    .line 55
    invoke-static {v0, v2}, Lcom/tw/pay/sdk/tool/Resource;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 54
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 57
    :goto_0
    iget-object v0, p0, Lcom/tw/pay/sdk/tool/IndentifyCodeTools;->context:Landroid/content/Context;

    const-string v2, "indentifyImg"

    invoke-static {v0, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 59
    iget-object v2, p0, Lcom/tw/pay/sdk/tool/IndentifyCodeTools;->context:Landroid/content/Context;

    const-string v3, "indentifyImgRefresh"

    invoke-static {v2, v3}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 61
    iget-object v3, p0, Lcom/tw/pay/sdk/tool/IndentifyCodeTools;->context:Landroid/content/Context;

    const-string v4, "indentifyEdt"

    invoke-static {v3, v4}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 63
    iget-object v4, p0, Lcom/tw/pay/sdk/tool/IndentifyCodeTools;->context:Landroid/content/Context;

    const-string v5, "sureBtn"

    invoke-static {v4, v5}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 65
    new-instance v5, Lcom/tw/pay/sdk/net/PicDownTask;

    invoke-direct {v5, v1, v0, v1}, Lcom/tw/pay/sdk/net/PicDownTask;-><init>(Landroid/widget/ImageView;Landroid/widget/ImageView;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p2, v1, v6

    .line 66
    invoke-virtual {v5, v1}, Lcom/tw/pay/sdk/net/PicDownTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 67
    new-instance v1, Lcom/tw/pay/sdk/tool/IndentifyCodeTools$1;

    invoke-direct {v1, p0, v0, p2}, Lcom/tw/pay/sdk/tool/IndentifyCodeTools$1;-><init>(Lcom/tw/pay/sdk/tool/IndentifyCodeTools;Landroid/widget/ImageView;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    new-instance p2, Lcom/tw/pay/sdk/tool/IndentifyCodeTools$2;

    invoke-direct {p2, p0, v3}, Lcom/tw/pay/sdk/tool/IndentifyCodeTools$2;-><init>(Lcom/tw/pay/sdk/tool/IndentifyCodeTools;Landroid/widget/EditText;)V

    invoke-virtual {v4, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object p2, p0, Lcom/tw/pay/sdk/tool/IndentifyCodeTools;->dialog:Landroid/app/Dialog;

    invoke-virtual {p2, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 93
    iget-object p1, p0, Lcom/tw/pay/sdk/tool/IndentifyCodeTools;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method public showIndentifyCodeDialog(Ljava/lang/String;Lcom/tw/pay/sdk/callback/TwCallback;)V
    .locals 0

    .line 27
    iput-object p2, p0, Lcom/tw/pay/sdk/tool/IndentifyCodeTools;->callback:Lcom/tw/pay/sdk/callback/TwCallback;

    .line 28
    invoke-direct {p0, p1}, Lcom/tw/pay/sdk/tool/IndentifyCodeTools;->getIndentifyCodeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/tw/pay/sdk/tool/IndentifyCodeTools;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
