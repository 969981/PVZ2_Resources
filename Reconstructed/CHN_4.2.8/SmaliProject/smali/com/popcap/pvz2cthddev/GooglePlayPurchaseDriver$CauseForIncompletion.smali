.class public final enum Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$CauseForIncompletion;
.super Ljava/lang/Enum;
.source "GooglePlayPurchaseDriver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CauseForIncompletion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$CauseForIncompletion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$CauseForIncompletion;

.field public static final enum Canceled:Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$CauseForIncompletion;

.field public static final enum Error:Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$CauseForIncompletion;

.field public static final enum Pending:Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$CauseForIncompletion;

.field public static final enum ServiceUnavailable:Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$CauseForIncompletion;

.field public static final enum UserNotAuthorized:Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$CauseForIncompletion;


# direct methods
.method private static synthetic $values()[Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$CauseForIncompletion;
    .locals 5

    .line 92
    sget-object v0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$CauseForIncompletion;->Error:Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$CauseForIncompletion;

    sget-object v1, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$CauseForIncompletion;->Canceled:Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$CauseForIncompletion;

    sget-object v2, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$CauseForIncompletion;->UserNotAuthorized:Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$CauseForIncompletion;

    sget-object v3, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$CauseForIncompletion;->ServiceUnavailable:Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$CauseForIncompletion;

    sget-object v4, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$CauseForIncompletion;->Pending:Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$CauseForIncompletion;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$CauseForIncompletion;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 94
    new-instance v0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$CauseForIncompletion;

    const-string v1, "Error"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$CauseForIncompletion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$CauseForIncompletion;->Error:Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$CauseForIncompletion;

    .line 95
    new-instance v0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$CauseForIncompletion;

    const-string v1, "Canceled"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$CauseForIncompletion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$CauseForIncompletion;->Canceled:Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$CauseForIncompletion;

    .line 96
    new-instance v0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$CauseForIncompletion;

    const-string v1, "UserNotAuthorized"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$CauseForIncompletion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$CauseForIncompletion;->UserNotAuthorized:Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$CauseForIncompletion;

    .line 97
    new-instance v0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$CauseForIncompletion;

    const-string v1, "ServiceUnavailable"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$CauseForIncompletion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$CauseForIncompletion;->ServiceUnavailable:Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$CauseForIncompletion;

    .line 98
    new-instance v0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$CauseForIncompletion;

    const-string v1, "Pending"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$CauseForIncompletion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$CauseForIncompletion;->Pending:Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$CauseForIncompletion;

    .line 92
    invoke-static {}, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$CauseForIncompletion;->$values()[Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$CauseForIncompletion;

    move-result-object v0

    sput-object v0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$CauseForIncompletion;->$VALUES:[Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$CauseForIncompletion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 92
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromOrdinal(I)Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$CauseForIncompletion;
    .locals 2

    .line 102
    invoke-static {}, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$CauseForIncompletion;->values()[Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$CauseForIncompletion;

    move-result-object v0

    if-ltz p0, :cond_1

    .line 103
    array-length v1, v0

    if-lt p0, v1, :cond_0

    goto :goto_0

    .line 107
    :cond_0
    aget-object p0, v0, p0

    return-object p0

    .line 105
    :cond_1
    :goto_0
    sget-object p0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$CauseForIncompletion;->Error:Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$CauseForIncompletion;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$CauseForIncompletion;
    .locals 1

    .line 92
    const-class v0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$CauseForIncompletion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$CauseForIncompletion;

    return-object p0
.end method

.method public static values()[Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$CauseForIncompletion;
    .locals 1

    .line 92
    sget-object v0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$CauseForIncompletion;->$VALUES:[Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$CauseForIncompletion;

    invoke-virtual {v0}, [Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$CauseForIncompletion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$CauseForIncompletion;

    return-object v0
.end method
