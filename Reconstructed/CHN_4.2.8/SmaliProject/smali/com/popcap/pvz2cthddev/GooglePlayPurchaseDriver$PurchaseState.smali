.class public final enum Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$PurchaseState;
.super Ljava/lang/Enum;
.source "GooglePlayPurchaseDriver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PurchaseState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$PurchaseState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$PurchaseState;

.field public static final enum CANCELED:Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$PurchaseState;

.field public static final enum PURCHASED:Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$PurchaseState;

.field public static final enum REFUNDED:Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$PurchaseState;


# direct methods
.method private static synthetic $values()[Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$PurchaseState;
    .locals 3

    .line 50
    sget-object v0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$PurchaseState;->PURCHASED:Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$PurchaseState;

    sget-object v1, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$PurchaseState;->CANCELED:Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$PurchaseState;

    sget-object v2, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$PurchaseState;->REFUNDED:Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$PurchaseState;

    filled-new-array {v0, v1, v2}, [Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$PurchaseState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 53
    new-instance v0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$PurchaseState;

    const-string v1, "PURCHASED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$PurchaseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$PurchaseState;->PURCHASED:Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$PurchaseState;

    .line 54
    new-instance v0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$PurchaseState;

    const-string v1, "CANCELED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$PurchaseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$PurchaseState;->CANCELED:Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$PurchaseState;

    .line 55
    new-instance v0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$PurchaseState;

    const-string v1, "REFUNDED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$PurchaseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$PurchaseState;->REFUNDED:Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$PurchaseState;

    .line 50
    invoke-static {}, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$PurchaseState;->$values()[Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$PurchaseState;

    move-result-object v0

    sput-object v0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$PurchaseState;->$VALUES:[Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$PurchaseState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromOrdinal(I)Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$PurchaseState;
    .locals 2

    .line 60
    invoke-static {}, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$PurchaseState;->values()[Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$PurchaseState;

    move-result-object v0

    if-ltz p0, :cond_1

    .line 61
    array-length v1, v0

    if-lt p0, v1, :cond_0

    goto :goto_0

    .line 65
    :cond_0
    aget-object p0, v0, p0

    return-object p0

    .line 63
    :cond_1
    :goto_0
    sget-object p0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$PurchaseState;->CANCELED:Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$PurchaseState;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$PurchaseState;
    .locals 1

    .line 50
    const-class v0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$PurchaseState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$PurchaseState;

    return-object p0
.end method

.method public static values()[Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$PurchaseState;
    .locals 1

    .line 50
    sget-object v0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$PurchaseState;->$VALUES:[Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$PurchaseState;

    invoke-virtual {v0}, [Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$PurchaseState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$PurchaseState;

    return-object v0
.end method
