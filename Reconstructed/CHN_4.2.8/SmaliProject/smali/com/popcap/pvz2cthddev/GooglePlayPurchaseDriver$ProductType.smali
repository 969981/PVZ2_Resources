.class public final enum Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$ProductType;
.super Ljava/lang/Enum;
.source "GooglePlayPurchaseDriver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProductType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$ProductType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$ProductType;

.field public static final enum Consumable:Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$ProductType;

.field public static final enum Restorable:Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$ProductType;

.field public static final enum Subscription:Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$ProductType;


# direct methods
.method private static synthetic $values()[Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$ProductType;
    .locals 3

    .line 72
    sget-object v0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$ProductType;->Consumable:Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$ProductType;

    sget-object v1, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$ProductType;->Restorable:Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$ProductType;

    sget-object v2, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$ProductType;->Subscription:Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$ProductType;

    filled-new-array {v0, v1, v2}, [Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$ProductType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 74
    new-instance v0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$ProductType;

    const-string v1, "Consumable"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$ProductType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$ProductType;->Consumable:Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$ProductType;

    .line 75
    new-instance v0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$ProductType;

    const-string v1, "Restorable"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$ProductType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$ProductType;->Restorable:Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$ProductType;

    .line 76
    new-instance v0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$ProductType;

    const-string v1, "Subscription"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$ProductType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$ProductType;->Subscription:Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$ProductType;

    .line 72
    invoke-static {}, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$ProductType;->$values()[Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$ProductType;

    move-result-object v0

    sput-object v0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$ProductType;->$VALUES:[Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$ProductType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 72
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromOrdinal(I)Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$ProductType;
    .locals 2

    .line 80
    invoke-static {}, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$ProductType;->values()[Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$ProductType;

    move-result-object v0

    if-ltz p0, :cond_1

    .line 81
    array-length v1, v0

    if-lt p0, v1, :cond_0

    goto :goto_0

    .line 85
    :cond_0
    aget-object p0, v0, p0

    return-object p0

    .line 83
    :cond_1
    :goto_0
    sget-object p0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$ProductType;->Consumable:Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$ProductType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$ProductType;
    .locals 1

    .line 72
    const-class v0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$ProductType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$ProductType;

    return-object p0
.end method

.method public static values()[Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$ProductType;
    .locals 1

    .line 72
    sget-object v0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$ProductType;->$VALUES:[Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$ProductType;

    invoke-virtual {v0}, [Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$ProductType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$ProductType;

    return-object v0
.end method
