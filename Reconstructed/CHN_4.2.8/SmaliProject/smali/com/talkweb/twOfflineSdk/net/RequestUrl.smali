.class public Lcom/talkweb/twOfflineSdk/net/RequestUrl;
.super Ljava/lang/Object;
.source "RequestUrl.java"


# static fields
.field public static final GET_TWPAY_FILE_URL:Ljava/lang/String; = "https://filepay.talkyun.com.cn"

.field public static final GET_TWPAY_VERSION_URL:Ljava/lang/String; = "https://verpay.talkyun.com.cn"

.field public static final PAY_RECORD:Ljava/lang/String; = "http://adapi.talkyun.com.cn/ad-aggregation-api/pvz/addpay"

.field public static final QUERY_AUTHENTICATION_URL:Ljava/lang/String; = "http://cert.talkyun.com.cn/ad-api/cert/queryCert"

.field public static final QUERY_ORDER_INFO:Ljava/lang/String; = "https://adc.ditwan.cn/ad/pay/qd"

.field public static final QUERY_PAYMENT:Ljava/lang/String; = "http://twuser.talkyun.com.cn/ad-api/user/orderquery?userid="

.field public static final QUERY_PAY_RECORD:Ljava/lang/String; = "http://adapi.talkyun.com.cn/ad-aggregation-api/pvz/querrypay"

.field public static final QUERY_SYSTEMTIME:Ljava/lang/String; = "https://adh5.talkyun.com.cn/ad-aggregation-api/getDay"

.field public static final REQUST_AUTHENTICATION_URL:Ljava/lang/String; = "http://cert.talkyun.com.cn/ad-api/cert/sendCert"

.field public static final Register_phone:Ljava/lang/String; = "http://cert.talkyun.com.cn/ad-api/cert/updateuserphone"

.field public static final TGA_LOG:Ljava/lang/String; = "https://pvz2androidtga.talkyun.com.cn/pvz2h5logs/tologs"

.field public static final TIME_SENDTO_SERVER:Ljava/lang/String; = "http://cert.talkyun.com.cn/ad-api/cert/updatebehaviorCert"

.field public static final UPDATE_ORDER_INFO:Ljava/lang/String; = "https://sd.ditwan.cn/api/sdk/upload"

.field public static UPLOAD_ABTEST_URL:Ljava/lang/String; = "https://gapi.hrgame.com.cn/api/apiv1/payLogReport"

.field public static final UPLOAD_Abtest:Ljava/lang/String; = "http://cert.talkyun.com.cn/ad-api/cert/abtest"

.field public static UPLOAD_RECORD_URL:Ljava/lang/String; = "https://ablog.talkyun.com.cn/PayMobilePbs/servlet/SyncPaymentRecord"

.field public static final UPLOAD_USERINFO:Ljava/lang/String; = "https://popcap.talkyun.com.cn/gameweb/sendPvzTwinfo"

.field public static final UPLOAD_USERINFO_Device:Ljava/lang/String; = "http://cert.talkyun.com.cn/ad-api/cert/updateuserinfo"

.field public static final UPLOAD_USERINFO_TGA:Ljava/lang/String; = "https://pvz2androidtga.talkyun.com.cn/pvz2h5logs/tologs"

.field public static final USER_OPENID:Ljava/lang/String; = "http://twuser.talkyun.com.cn/ad-api/user/userlogin"

.field public static final VERIFY_INFO:Ljava/lang/String; = "https://adh5.talkyun.com.cn/ad-aggregation-api/newad/certification"

.field public static final VERIFY_URL:Ljava/lang/String; = "http://filead.talkyun.com.cn/newcertification"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
