.class public Lcom/tw/pay/sdk/alipay/AlipayTool;
.super Ljava/lang/Object;
.source "AlipayTool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tw/pay/sdk/alipay/AlipayTool$AlixOnCancelListener;
    }
.end annotation


# static fields
.field private static alipayTool:Lcom/tw/pay/sdk/alipay/AlipayTool;


# instance fields
.field private callback:Lcom/tw/pay/sdk/callback/TwCallback;

.field private code:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lcom/tw/pay/sdk/alipay/AlipayTool$1;

    invoke-direct {v0, p0}, Lcom/tw/pay/sdk/alipay/AlipayTool$1;-><init>(Lcom/tw/pay/sdk/alipay/AlipayTool;)V

    iput-object v0, p0, Lcom/tw/pay/sdk/alipay/AlipayTool;->mHandler:Landroid/os/Handler;

    .line 81
    iput-object p1, p0, Lcom/tw/pay/sdk/alipay/AlipayTool;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/tw/pay/sdk/alipay/AlipayTool;)Ljava/lang/String;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/tw/pay/sdk/alipay/AlipayTool;->code:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/tw/pay/sdk/alipay/AlipayTool;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/tw/pay/sdk/alipay/AlipayTool;->code:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/tw/pay/sdk/alipay/AlipayTool;)Lcom/tw/pay/sdk/callback/TwCallback;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/tw/pay/sdk/alipay/AlipayTool;->callback:Lcom/tw/pay/sdk/callback/TwCallback;

    return-object p0
.end method

.method private checkInfo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/tw/pay/sdk/alipay/AlipayTool;
    .locals 1

    .line 74
    sget-object v0, Lcom/tw/pay/sdk/alipay/AlipayTool;->alipayTool:Lcom/tw/pay/sdk/alipay/AlipayTool;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lcom/tw/pay/sdk/alipay/AlipayTool;

    invoke-direct {v0, p0}, Lcom/tw/pay/sdk/alipay/AlipayTool;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tw/pay/sdk/alipay/AlipayTool;->alipayTool:Lcom/tw/pay/sdk/alipay/AlipayTool;

    .line 77
    :cond_0
    sget-object p0, Lcom/tw/pay/sdk/alipay/AlipayTool;->alipayTool:Lcom/tw/pay/sdk/alipay/AlipayTool;

    return-object p0
.end method

.method private getOutTradeNo()Ljava/lang/String;
    .locals 3

    .line 236
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MMddHHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 237
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 238
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 240
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 241
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0xf

    .line 242
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public alipayPay(Ljava/lang/String;Lcom/tw/pay/sdk/callback/TwCallback;)V
    .locals 3

    const-string v0, "&"

    const-string v1, "="

    .line 88
    iput-object p2, p0, Lcom/tw/pay/sdk/alipay/AlipayTool;->callback:Lcom/tw/pay/sdk/callback/TwCallback;

    .line 89
    new-instance p2, Lcom/tw/pay/sdk/alipay/MobileSecurePayHelper;

    iget-object v2, p0, Lcom/tw/pay/sdk/alipay/AlipayTool;->context:Landroid/content/Context;

    invoke-direct {p2, v2}, Lcom/tw/pay/sdk/alipay/MobileSecurePayHelper;-><init>(Landroid/content/Context;)V

    .line 90
    invoke-virtual {p2}, Lcom/tw/pay/sdk/alipay/MobileSecurePayHelper;->detectMobile_sp()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 96
    :cond_0
    invoke-direct {p0}, Lcom/tw/pay/sdk/alipay/AlipayTool;->checkInfo()Z

    move-result p2

    if-nez p2, :cond_1

    .line 97
    iget-object p1, p0, Lcom/tw/pay/sdk/alipay/AlipayTool;->context:Landroid/content/Context;

    move-object p2, p1

    check-cast p2, Landroid/app/Activity;

    const-string v0, "infoicon"

    .line 102
    invoke-static {p1, v0}, Lcom/tw/pay/sdk/tool/Resource;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    const-string v0, "\u63d0\u793a"

    const-string v1, "\u7f3a\u5c11partner\u6216\u8005seller\uff0c\u8bf7\u5728src/com/alipay/android/appDemo4/PartnerConfig.java\u4e2d\u589e\u52a0\u3002"

    .line 98
    invoke-static {p2, v0, v1, p1}, Lcom/tw/pay/sdk/alipay/BaseHelper;->showDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 109
    :cond_1
    :try_start_0
    new-instance p2, Lcom/tw/pay/sdk/alipay/MobileSecurePayer;

    invoke-direct {p2}, Lcom/tw/pay/sdk/alipay/MobileSecurePayer;-><init>()V

    .line 111
    invoke-virtual {p1, v1, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/tw/pay/sdk/alipay/AlipayTool;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/tw/pay/sdk/alipay/AlipayTool;->context:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    .line 110
    invoke-virtual {p2, p1, v0, v1, v2}, Lcom/tw/pay/sdk/alipay/MobileSecurePayer;->pay(Ljava/lang/String;Landroid/os/Handler;ILandroid/app/Activity;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "02"

    .line 115
    iput-object p1, p0, Lcom/tw/pay/sdk/alipay/AlipayTool;->code:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method getOrderInfo()Ljava/lang/String;
    .locals 3

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "partner=\"2088011353875645\"&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "seller=\"game@talkweb.com.cn\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 185
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "out_trade_no=\""

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/tw/pay/sdk/alipay/AlipayTool;->getOutTradeNo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 186
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 187
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "subject=\"as\""

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 188
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 189
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "body=\"sas\""

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 190
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 191
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "total_fee=\" 0.01\""

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 192
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "notify_url=\"http://notify.java.jpxx.org/index.jsp\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getOrderInfo(I)Ljava/lang/String;
    .locals 2

    .line 162
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "partner=\"2088011353875645\"&"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "seller=\"game@talkweb.com.cn\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "out_trade_no=\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/tw/pay/sdk/alipay/AlipayTool;->getOutTradeNo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "subject=\"mao\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "body=\"sssss\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "total_fee=\"0.01\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "notify_url=\"http://notify.java.jpxx.org/index.jsp\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method sign(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p1, "MIICdwIBADANBgkqhkiG9w0BAQEFAASCAmEwggJdAgEAAoGBAPfWcsuOP50PJamxmrfVHNpk/nrLEtZoYzf7boj1D30hUw/YQCePzIb+Laf9k+gR1nqtLDPIxRS0Zhf1yNP/AbZ+LnMfnDNvEwiJ30HwNrIJ4z8neF69MguZc2hqtG5EALt47uGuGi7JXylWla+2IEn6suqKz16QCBr9gXLSXdXnAgMBAAECgYEAt3OOr6xQ3DI9H7oum0rtu58sW7p77CeC4gqETG6Rk38aW80n1+DydS4qn4HtfMfPailLYd2IPIY4WB4AFSRan8Ue6HG7h0mHjpZ4USnGHWXBkxLDlzN/MEMut5AC4MBD9un6Z+eqjyD43Sd9t2b1OUBye8mbO2Bq7R7bB38ca8ECQQD/0g7KIgMHEimSuVsAI4tA8eLmAiPa2bxllQc151JXE1ASG6xIrU2AOmcFxDXVUJ4jjCTr5xAzZOuVeAbuSo9hAkEA+AL0/5d+Nln6+Jw+hFcawPK0+oyZnSd1xXiBb22VU154lu4MfhqnCfnhqlcwbVwQRDMwF5R737cOXKye76NSRwI/QfPl3DbokOodzbX7wA1p2VSDKslidQmtiILjWQJKOCjCe+imghYr5OMprFLpjhU6r+9xlV/8zUM3eVF4d/bBAkEA8Xjnk+erUj3/tolh8TZh7RUikoPMmQ+vgknXNGesqVRk8wbpkOpgUr1CM7jahM/LYqu4Gm1Owr4XtLG5ubb5xwJBAKWl4EMPxBtj3pH+k9yicH2v2ivHmAsNR/UDtcFKjoK5rLOVDx7xMAm0kYFf9YuNcZbcuO0Fel6Lpk3CqN8UDUQ="

    .line 256
    invoke-static {p2, p1}, Lcom/tw/pay/sdk/alipay/Rsa;->sign(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
