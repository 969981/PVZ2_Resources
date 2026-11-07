.class public Lcom/popcap/pvz2cthddev/ThirdpartyPurchaseDriver;
.super Ljava/lang/Object;
.source "ThirdpartyPurchaseDriver.java"


# static fields
.field public static final BILLING_RESULT_ALREADY_PAID:I = 0x3

.field public static final BILLING_RESULT_CANCELED:I = 0x2

.field public static final BILLING_RESULT_FAILED:I = 0x1

.field public static final BILLING_RESULT_SUCCESS:I


# instance fields
.field public mNativeDriverPtr:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-wide p1, p0, Lcom/popcap/pvz2cthddev/ThirdpartyPurchaseDriver;->mNativeDriverPtr:J

    return-void
.end method


# virtual methods
.method public GetIMSI()Ljava/lang/String;
    .locals 2

    .line 23
    invoke-static {}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->instance()Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 25
    const-string v0, "460001234567890"

    return-object v0
.end method

.method public GetSimSerialNumber()Ljava/lang/String;
    .locals 2

    .line 29
    invoke-static {}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->instance()Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 30
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
