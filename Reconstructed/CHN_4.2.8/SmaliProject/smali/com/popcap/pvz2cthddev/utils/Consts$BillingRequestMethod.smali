.class final enum Lcom/popcap/pvz2cthddev/utils/Consts$BillingRequestMethod;
.super Ljava/lang/Enum;
.source "Consts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/popcap/pvz2cthddev/utils/Consts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "BillingRequestMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/popcap/pvz2cthddev/utils/Consts$BillingRequestMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/popcap/pvz2cthddev/utils/Consts$BillingRequestMethod;

.field public static final enum CHECK_BILLING_SUPPORTED:Lcom/popcap/pvz2cthddev/utils/Consts$BillingRequestMethod;

.field public static final enum CONFIRM_NOTIFICATIONS:Lcom/popcap/pvz2cthddev/utils/Consts$BillingRequestMethod;

.field public static final enum GET_PURCHASE_INFORMATION:Lcom/popcap/pvz2cthddev/utils/Consts$BillingRequestMethod;

.field public static final enum REQUEST_PURCHASE:Lcom/popcap/pvz2cthddev/utils/Consts$BillingRequestMethod;

.field public static final enum RESTORE_TRANSACTIONS:Lcom/popcap/pvz2cthddev/utils/Consts$BillingRequestMethod;


# direct methods
.method private static synthetic $values()[Lcom/popcap/pvz2cthddev/utils/Consts$BillingRequestMethod;
    .locals 5

    .line 10
    sget-object v0, Lcom/popcap/pvz2cthddev/utils/Consts$BillingRequestMethod;->CHECK_BILLING_SUPPORTED:Lcom/popcap/pvz2cthddev/utils/Consts$BillingRequestMethod;

    sget-object v1, Lcom/popcap/pvz2cthddev/utils/Consts$BillingRequestMethod;->REQUEST_PURCHASE:Lcom/popcap/pvz2cthddev/utils/Consts$BillingRequestMethod;

    sget-object v2, Lcom/popcap/pvz2cthddev/utils/Consts$BillingRequestMethod;->GET_PURCHASE_INFORMATION:Lcom/popcap/pvz2cthddev/utils/Consts$BillingRequestMethod;

    sget-object v3, Lcom/popcap/pvz2cthddev/utils/Consts$BillingRequestMethod;->CONFIRM_NOTIFICATIONS:Lcom/popcap/pvz2cthddev/utils/Consts$BillingRequestMethod;

    sget-object v4, Lcom/popcap/pvz2cthddev/utils/Consts$BillingRequestMethod;->RESTORE_TRANSACTIONS:Lcom/popcap/pvz2cthddev/utils/Consts$BillingRequestMethod;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/popcap/pvz2cthddev/utils/Consts$BillingRequestMethod;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 12
    new-instance v0, Lcom/popcap/pvz2cthddev/utils/Consts$BillingRequestMethod;

    const-string v1, "CHECK_BILLING_SUPPORTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/popcap/pvz2cthddev/utils/Consts$BillingRequestMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/popcap/pvz2cthddev/utils/Consts$BillingRequestMethod;->CHECK_BILLING_SUPPORTED:Lcom/popcap/pvz2cthddev/utils/Consts$BillingRequestMethod;

    new-instance v0, Lcom/popcap/pvz2cthddev/utils/Consts$BillingRequestMethod;

    const-string v1, "REQUEST_PURCHASE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/popcap/pvz2cthddev/utils/Consts$BillingRequestMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/popcap/pvz2cthddev/utils/Consts$BillingRequestMethod;->REQUEST_PURCHASE:Lcom/popcap/pvz2cthddev/utils/Consts$BillingRequestMethod;

    new-instance v0, Lcom/popcap/pvz2cthddev/utils/Consts$BillingRequestMethod;

    const-string v1, "GET_PURCHASE_INFORMATION"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/popcap/pvz2cthddev/utils/Consts$BillingRequestMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/popcap/pvz2cthddev/utils/Consts$BillingRequestMethod;->GET_PURCHASE_INFORMATION:Lcom/popcap/pvz2cthddev/utils/Consts$BillingRequestMethod;

    new-instance v0, Lcom/popcap/pvz2cthddev/utils/Consts$BillingRequestMethod;

    const-string v1, "CONFIRM_NOTIFICATIONS"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/popcap/pvz2cthddev/utils/Consts$BillingRequestMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/popcap/pvz2cthddev/utils/Consts$BillingRequestMethod;->CONFIRM_NOTIFICATIONS:Lcom/popcap/pvz2cthddev/utils/Consts$BillingRequestMethod;

    new-instance v0, Lcom/popcap/pvz2cthddev/utils/Consts$BillingRequestMethod;

    const-string v1, "RESTORE_TRANSACTIONS"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/popcap/pvz2cthddev/utils/Consts$BillingRequestMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/popcap/pvz2cthddev/utils/Consts$BillingRequestMethod;->RESTORE_TRANSACTIONS:Lcom/popcap/pvz2cthddev/utils/Consts$BillingRequestMethod;

    .line 10
    invoke-static {}, Lcom/popcap/pvz2cthddev/utils/Consts$BillingRequestMethod;->$values()[Lcom/popcap/pvz2cthddev/utils/Consts$BillingRequestMethod;

    move-result-object v0

    sput-object v0, Lcom/popcap/pvz2cthddev/utils/Consts$BillingRequestMethod;->$VALUES:[Lcom/popcap/pvz2cthddev/utils/Consts$BillingRequestMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/popcap/pvz2cthddev/utils/Consts$BillingRequestMethod;
    .locals 1

    .line 10
    const-class v0, Lcom/popcap/pvz2cthddev/utils/Consts$BillingRequestMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/popcap/pvz2cthddev/utils/Consts$BillingRequestMethod;

    return-object p0
.end method

.method public static values()[Lcom/popcap/pvz2cthddev/utils/Consts$BillingRequestMethod;
    .locals 1

    .line 10
    sget-object v0, Lcom/popcap/pvz2cthddev/utils/Consts$BillingRequestMethod;->$VALUES:[Lcom/popcap/pvz2cthddev/utils/Consts$BillingRequestMethod;

    invoke-virtual {v0}, [Lcom/popcap/pvz2cthddev/utils/Consts$BillingRequestMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/popcap/pvz2cthddev/utils/Consts$BillingRequestMethod;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/String;)Z
    .locals 1

    .line 16
    invoke-virtual {p0}, Lcom/popcap/pvz2cthddev/utils/Consts$BillingRequestMethod;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
