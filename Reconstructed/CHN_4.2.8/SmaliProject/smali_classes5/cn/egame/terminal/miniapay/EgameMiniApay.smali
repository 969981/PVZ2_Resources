.class public Lcn/egame/terminal/miniapay/EgameMiniApay;
.super Ljava/lang/Object;


# static fields
.field public static CHAIN_MOBILE:[Ljava/lang/String; = null

.field public static CHINA_TELECOM:[Ljava/lang/String; = null

.field public static CHINA_UNICOM:[Ljava/lang/String; = null

.field protected static FEE_LOCK:Z = false

.field protected static SEND_SMS:Z = false

.field protected static final SENT:Ljava/lang/String; = "com.egame.minisdk.sent"

.field protected static final SMS_NUMBER:Ljava/lang/String; = "11807314"

.field public static final SMS_SENT_ERR:I = 0x65

.field public static final SMS_SENT_OK:I = 0x64

.field private static a:Z

.field private static b:Lcn/egame/terminal/miniapay/a;

.field private static c:Ljava/lang/String;

.field protected static context:Landroid/content/Context;

.field private static d:I

.field private static e:Z

.field protected static mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "46003"

    const-string v1, "46005"

    const-string v2, "46011"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/egame/terminal/miniapay/EgameMiniApay;->CHINA_TELECOM:[Ljava/lang/String;

    const-string v0, "46020"

    const-string v1, "46000"

    const-string v2, "46002"

    const-string v3, "46007"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/egame/terminal/miniapay/EgameMiniApay;->CHAIN_MOBILE:[Ljava/lang/String;

    const-string v0, "46001"

    const-string v1, "46006"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/egame/terminal/miniapay/EgameMiniApay;->CHINA_UNICOM:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcn/egame/terminal/miniapay/EgameMiniApay;->a:Z

    sput-boolean v0, Lcn/egame/terminal/miniapay/EgameMiniApay;->SEND_SMS:Z

    sput-boolean v0, Lcn/egame/terminal/miniapay/EgameMiniApay;->FEE_LOCK:Z

    const-string v1, ""

    sput-object v1, Lcn/egame/terminal/miniapay/EgameMiniApay;->c:Ljava/lang/String;

    sput v0, Lcn/egame/terminal/miniapay/EgameMiniApay;->d:I

    new-instance v1, Lcn/egame/terminal/miniapay/e;

    invoke-direct {v1}, Lcn/egame/terminal/miniapay/e;-><init>()V

    sput-object v1, Lcn/egame/terminal/miniapay/EgameMiniApay;->mHandler:Landroid/os/Handler;

    sput-boolean v0, Lcn/egame/terminal/miniapay/EgameMiniApay;->e:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fee(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcn/egame/terminal/miniapay/EgameFeeListener;)V
    .locals 10

    const/4 v0, 0x1

    if-nez p0, :cond_0

    const/16 v1, -0x64

    :goto_0
    sput v1, Lcn/egame/terminal/miniapay/EgameMiniApay;->d:I

    goto :goto_2

    :cond_0
    sput-object p0, Lcn/egame/terminal/miniapay/EgameMiniApay;->context:Landroid/content/Context;

    invoke-static {p0}, Lcn/egame/terminal/miniapay/a;->a(Landroid/content/Context;)Lcn/egame/terminal/miniapay/a;

    move-result-object v1

    sput-object v1, Lcn/egame/terminal/miniapay/EgameMiniApay;->b:Lcn/egame/terminal/miniapay/a;

    if-nez v1, :cond_1

    const/16 v1, -0x65

    goto :goto_0

    :cond_1
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcn/egame/terminal/miniapay/EgameMiniApay;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v3, -0x68

    if-eqz v2, :cond_2

    :goto_1
    sput v3, Lcn/egame/terminal/miniapay/EgameMiniApay;->d:I

    goto :goto_2

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcn/egame/terminal/miniapay/EgameMiniApay;->c:Ljava/lang/String;

    invoke-static {v2, v1}, Lcn/egame/terminal/miniapay/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcn/egame/terminal/miniapay/c;

    move-result-object v1

    sget-object v2, Lcn/egame/terminal/miniapay/c;->a:Lcn/egame/terminal/miniapay/c;

    if-eq v1, v2, :cond_3

    goto :goto_1

    :cond_3
    sput-boolean v0, Lcn/egame/terminal/miniapay/EgameMiniApay;->a:Z

    :goto_2
    sget-boolean v1, Lcn/egame/terminal/miniapay/EgameMiniApay;->a:Z

    if-eqz v1, :cond_a

    if-eqz p3, :cond_9

    sget-object v1, Lcn/egame/terminal/miniapay/EgameMiniApay;->b:Lcn/egame/terminal/miniapay/a;

    invoke-virtual {v1, p1}, Lcn/egame/terminal/miniapay/a;->a(Ljava/lang/String;)Lcn/egame/terminal/miniapay/b;

    move-result-object v1

    const/16 v2, -0xca

    if-nez v1, :cond_4

    invoke-interface {p3, v2}, Lcn/egame/terminal/miniapay/EgameFeeListener;->feeFail(I)V

    return-void

    :cond_4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/16 v4, -0xcd

    if-eqz v3, :cond_5

    invoke-interface {p3, v4}, Lcn/egame/terminal/miniapay/EgameFeeListener;->feeFail(I)V

    return-void

    :cond_5
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v5, 0x20

    if-le v3, v5, :cond_6

    invoke-interface {p3, v4}, Lcn/egame/terminal/miniapay/EgameFeeListener;->feeFail(I)V

    return-void

    :cond_6
    :try_start_0
    iget-object v3, v1, Lcn/egame/terminal/miniapay/b;->b:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/32 v6, 0x271c4f8

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    move-object v9, p2

    invoke-static/range {v4 .. v9}, Legame/terminal/feesmslib/jni/SmsProtocol;->encrypt(JJLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_7

    const/16 p0, -0xcc

    invoke-interface {p3, p0}, Lcn/egame/terminal/miniapay/EgameFeeListener;->feeFail(I)V

    return-void

    :cond_7
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "0D"

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-boolean p2, Lcn/egame/terminal/miniapay/EgameMiniApay;->FEE_LOCK:Z

    if-eqz p2, :cond_8

    const/16 p0, -0xce

    invoke-interface {p3, p0}, Lcn/egame/terminal/miniapay/EgameFeeListener;->feeFail(I)V

    return-void

    :cond_8
    sput-boolean v0, Lcn/egame/terminal/miniapay/EgameMiniApay;->FEE_LOCK:Z

    const/4 p2, 0x0

    sput-boolean p2, Lcn/egame/terminal/miniapay/EgameMiniApay;->SEND_SMS:Z

    new-instance v0, Lcn/egame/terminal/miniapay/d;

    iget-object v1, v1, Lcn/egame/terminal/miniapay/b;->a:Ljava/lang/String;

    invoke-direct {v0, v1, p0, p1, p3}, Lcn/egame/terminal/miniapay/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/egame/terminal/miniapay/EgameFeeListener;)V

    new-array p0, p2, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcn/egame/terminal/miniapay/d;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :catch_0
    invoke-interface {p3, v2}, Lcn/egame/terminal/miniapay/EgameFeeListener;->feeFail(I)V

    return-void

    :cond_9
    new-instance p0, Ljava/lang/RuntimeException;

    const/16 p1, -0xc9

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    sget p0, Lcn/egame/terminal/miniapay/EgameMiniApay;->d:I

    invoke-interface {p3, p0}, Lcn/egame/terminal/miniapay/EgameFeeListener;->feeFail(I)V

    return-void
.end method
