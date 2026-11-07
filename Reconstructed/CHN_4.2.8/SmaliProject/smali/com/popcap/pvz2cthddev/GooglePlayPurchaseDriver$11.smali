.class synthetic Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$11;
.super Ljava/lang/Object;
.source "GooglePlayPurchaseDriver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$popcap$pvz2cthddev$GooglePlayPurchaseDriver$ProductType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 409
    invoke-static {}, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$ProductType;->values()[Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$ProductType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$11;->$SwitchMap$com$popcap$pvz2cthddev$GooglePlayPurchaseDriver$ProductType:[I

    :try_start_0
    sget-object v1, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$ProductType;->Consumable:Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$ProductType;

    invoke-virtual {v1}, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$ProductType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$11;->$SwitchMap$com$popcap$pvz2cthddev$GooglePlayPurchaseDriver$ProductType:[I

    sget-object v1, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$ProductType;->Restorable:Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$ProductType;

    invoke-virtual {v1}, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$ProductType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$11;->$SwitchMap$com$popcap$pvz2cthddev$GooglePlayPurchaseDriver$ProductType:[I

    sget-object v1, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$ProductType;->Subscription:Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$ProductType;

    invoke-virtual {v1}, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$ProductType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
