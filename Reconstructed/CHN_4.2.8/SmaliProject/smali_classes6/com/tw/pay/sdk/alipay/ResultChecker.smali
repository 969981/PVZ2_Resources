.class public Lcom/tw/pay/sdk/alipay/ResultChecker;
.super Ljava/lang/Object;
.source "ResultChecker.java"


# static fields
.field public static final RESULT_CHECK_SIGN_FAILED:I = 0x1

.field public static final RESULT_CHECK_SIGN_SUCCEED:I = 0x2

.field public static final RESULT_INVALID_PARAM:I


# instance fields
.field mContent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/tw/pay/sdk/alipay/ResultChecker;->mContent:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method checkSign()I
    .locals 8

    const-string v0, "\""

    const-string v1, ""

    const/4 v2, 0x0

    .line 53
    :try_start_0
    iget-object v3, p0, Lcom/tw/pay/sdk/alipay/ResultChecker;->mContent:Ljava/lang/String;

    const-string v4, ";"

    invoke-static {v3, v4}, Lcom/tw/pay/sdk/alipay/BaseHelper;->string2JSON(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "result"

    .line 54
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 55
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "&sign_type="

    .line 57
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 58
    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v6, "&"

    .line 60
    invoke-static {v3, v6}, Lcom/tw/pay/sdk/alipay/BaseHelper;->string2JSON(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v6, "sign_type"

    .line 61
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 62
    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "sign"

    .line 64
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 65
    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "RSA"

    .line 67
    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 68
    invoke-static {v4, v0, v1}, Lcom/tw/pay/sdk/alipay/Rsa;->doCheck(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    const/4 v2, 0x2

    goto :goto_0

    :catch_0
    move-exception v0

    .line 74
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return v2
.end method
