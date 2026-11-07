.class public Lcom/tw/OnLinePaySdk/net/ServerPath;
.super Ljava/lang/Object;
.source "ServerPath.java"


# static fields
.field public static ActivateCode_Path:Ljava/lang/String; = ""

.field public static Check_Login_Path:Ljava/lang/String; = ""

.field public static Get_Order_Msg_Path:Ljava/lang/String; = ""

.field public static Login_Path:Ljava/lang/String; = ""

.field public static RecordUserAttrUrl:Ljava/lang/String; = ""

.field public static Register_Path:Ljava/lang/String; = ""

.field public static SendUserInfo_Url:Ljava/lang/String; = ""

.field public static Send_Login_Info_Path:Ljava/lang/String; = ""

.field public static Server_GetDownUrl_Path:Ljava/lang/String; = ""

.field public static queryOrderInfo_Url:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setUrl(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 25
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    .line 26
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object p1

    const-string v0, "UTF-8"

    .line 27
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 28
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p0

    :goto_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    goto/16 :goto_1

    :cond_1
    const-string p0, "CheckLoginUrl"

    .line 36
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 37
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/tw/OnLinePaySdk/net/ServerPath;->Check_Login_Path:Ljava/lang/String;

    :cond_2
    const-string p0, "SendLoginInfoUrl"

    .line 39
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 40
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/tw/OnLinePaySdk/net/ServerPath;->Send_Login_Info_Path:Ljava/lang/String;

    :cond_3
    const-string p0, "GetOrderMsgUrl"

    .line 43
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 44
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/tw/OnLinePaySdk/net/ServerPath;->Get_Order_Msg_Path:Ljava/lang/String;

    :cond_4
    const-string p0, "LoginUrl"

    .line 46
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 47
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/tw/OnLinePaySdk/net/ServerPath;->Login_Path:Ljava/lang/String;

    :cond_5
    const-string p0, "RegisterUrl"

    .line 50
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 51
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/tw/OnLinePaySdk/net/ServerPath;->Register_Path:Ljava/lang/String;

    :cond_6
    const-string p0, "ActivateCode"

    .line 53
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 54
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/tw/OnLinePaySdk/net/ServerPath;->ActivateCode_Path:Ljava/lang/String;

    :cond_7
    const-string p0, "GetDownUrl"

    .line 57
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 58
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/tw/OnLinePaySdk/net/ServerPath;->Server_GetDownUrl_Path:Ljava/lang/String;

    :cond_8
    const-string p0, "RecordUserAttrUrl"

    .line 61
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 62
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/tw/OnLinePaySdk/net/ServerPath;->RecordUserAttrUrl:Ljava/lang/String;

    :cond_9
    const-string p0, "SendUserInfo_Url"

    .line 65
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    .line 66
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/tw/OnLinePaySdk/net/ServerPath;->SendUserInfo_Url:Ljava/lang/String;

    :cond_a
    const-string p0, "SdkQueryPayInfo"

    .line 68
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    .line 69
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/tw/OnLinePaySdk/net/ServerPath;->queryOrderInfo_Url:Ljava/lang/String;

    .line 74
    :cond_b
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p0

    .line 79
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method
