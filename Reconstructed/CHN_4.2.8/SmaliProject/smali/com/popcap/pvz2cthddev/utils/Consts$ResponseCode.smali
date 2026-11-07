.class public final enum Lcom/popcap/pvz2cthddev/utils/Consts$ResponseCode;
.super Ljava/lang/Enum;
.source "Consts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/popcap/pvz2cthddev/utils/Consts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResponseCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/popcap/pvz2cthddev/utils/Consts$ResponseCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/popcap/pvz2cthddev/utils/Consts$ResponseCode;

.field public static final enum RESULT_BILLING_UNAVAILABLE:Lcom/popcap/pvz2cthddev/utils/Consts$ResponseCode;

.field public static final enum RESULT_DEVELOPER_ERROR:Lcom/popcap/pvz2cthddev/utils/Consts$ResponseCode;

.field public static final enum RESULT_ERROR:Lcom/popcap/pvz2cthddev/utils/Consts$ResponseCode;

.field public static final enum RESULT_ITEM_UNAVAILABLE:Lcom/popcap/pvz2cthddev/utils/Consts$ResponseCode;

.field public static final enum RESULT_OK:Lcom/popcap/pvz2cthddev/utils/Consts$ResponseCode;

.field public static final enum RESULT_SERVICE_UNAVAILABLE:Lcom/popcap/pvz2cthddev/utils/Consts$ResponseCode;

.field public static final enum RESULT_USER_CANCELED:Lcom/popcap/pvz2cthddev/utils/Consts$ResponseCode;


# direct methods
.method private static synthetic $values()[Lcom/popcap/pvz2cthddev/utils/Consts$ResponseCode;
    .locals 7

    .line 63
    sget-object v0, Lcom/popcap/pvz2cthddev/utils/Consts$ResponseCode;->RESULT_OK:Lcom/popcap/pvz2cthddev/utils/Consts$ResponseCode;

    sget-object v1, Lcom/popcap/pvz2cthddev/utils/Consts$ResponseCode;->RESULT_USER_CANCELED:Lcom/popcap/pvz2cthddev/utils/Consts$ResponseCode;

    sget-object v2, Lcom/popcap/pvz2cthddev/utils/Consts$ResponseCode;->RESULT_SERVICE_UNAVAILABLE:Lcom/popcap/pvz2cthddev/utils/Consts$ResponseCode;

    sget-object v3, Lcom/popcap/pvz2cthddev/utils/Consts$ResponseCode;->RESULT_BILLING_UNAVAILABLE:Lcom/popcap/pvz2cthddev/utils/Consts$ResponseCode;

    sget-object v4, Lcom/popcap/pvz2cthddev/utils/Consts$ResponseCode;->RESULT_ITEM_UNAVAILABLE:Lcom/popcap/pvz2cthddev/utils/Consts$ResponseCode;

    sget-object v5, Lcom/popcap/pvz2cthddev/utils/Consts$ResponseCode;->RESULT_DEVELOPER_ERROR:Lcom/popcap/pvz2cthddev/utils/Consts$ResponseCode;

    sget-object v6, Lcom/popcap/pvz2cthddev/utils/Consts$ResponseCode;->RESULT_ERROR:Lcom/popcap/pvz2cthddev/utils/Consts$ResponseCode;

    filled-new-array/range {v0 .. v6}, [Lcom/popcap/pvz2cthddev/utils/Consts$ResponseCode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 65
    new-instance v0, Lcom/popcap/pvz2cthddev/utils/Consts$ResponseCode;

    const-string v1, "RESULT_OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/popcap/pvz2cthddev/utils/Consts$ResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/popcap/pvz2cthddev/utils/Consts$ResponseCode;->RESULT_OK:Lcom/popcap/pvz2cthddev/utils/Consts$ResponseCode;

    .line 66
    new-instance v0, Lcom/popcap/pvz2cthddev/utils/Consts$ResponseCode;

    const-string v1, "RESULT_USER_CANCELED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/popcap/pvz2cthddev/utils/Consts$ResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/popcap/pvz2cthddev/utils/Consts$ResponseCode;->RESULT_USER_CANCELED:Lcom/popcap/pvz2cthddev/utils/Consts$ResponseCode;

    .line 67
    new-instance v0, Lcom/popcap/pvz2cthddev/utils/Consts$ResponseCode;

    const-string v1, "RESULT_SERVICE_UNAVAILABLE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/popcap/pvz2cthddev/utils/Consts$ResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/popcap/pvz2cthddev/utils/Consts$ResponseCode;->RESULT_SERVICE_UNAVAILABLE:Lcom/popcap/pvz2cthddev/utils/Consts$ResponseCode;

    .line 68
    new-instance v0, Lcom/popcap/pvz2cthddev/utils/Consts$ResponseCode;

    const-string v1, "RESULT_BILLING_UNAVAILABLE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/popcap/pvz2cthddev/utils/Consts$ResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/popcap/pvz2cthddev/utils/Consts$ResponseCode;->RESULT_BILLING_UNAVAILABLE:Lcom/popcap/pvz2cthddev/utils/Consts$ResponseCode;

    .line 69
    new-instance v0, Lcom/popcap/pvz2cthddev/utils/Consts$ResponseCode;

    const-string v1, "RESULT_ITEM_UNAVAILABLE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/popcap/pvz2cthddev/utils/Consts$ResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/popcap/pvz2cthddev/utils/Consts$ResponseCode;->RESULT_ITEM_UNAVAILABLE:Lcom/popcap/pvz2cthddev/utils/Consts$ResponseCode;

    .line 70
    new-instance v0, Lcom/popcap/pvz2cthddev/utils/Consts$ResponseCode;

    const-string v1, "RESULT_DEVELOPER_ERROR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/popcap/pvz2cthddev/utils/Consts$ResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/popcap/pvz2cthddev/utils/Consts$ResponseCode;->RESULT_DEVELOPER_ERROR:Lcom/popcap/pvz2cthddev/utils/Consts$ResponseCode;

    .line 71
    new-instance v0, Lcom/popcap/pvz2cthddev/utils/Consts$ResponseCode;

    const-string v1, "RESULT_ERROR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/popcap/pvz2cthddev/utils/Consts$ResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/popcap/pvz2cthddev/utils/Consts$ResponseCode;->RESULT_ERROR:Lcom/popcap/pvz2cthddev/utils/Consts$ResponseCode;

    .line 63
    invoke-static {}, Lcom/popcap/pvz2cthddev/utils/Consts$ResponseCode;->$values()[Lcom/popcap/pvz2cthddev/utils/Consts$ResponseCode;

    move-result-object v0

    sput-object v0, Lcom/popcap/pvz2cthddev/utils/Consts$ResponseCode;->$VALUES:[Lcom/popcap/pvz2cthddev/utils/Consts$ResponseCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromOrdinal(I)Lcom/popcap/pvz2cthddev/utils/Consts$ResponseCode;
    .locals 2

    .line 75
    invoke-static {}, Lcom/popcap/pvz2cthddev/utils/Consts$ResponseCode;->values()[Lcom/popcap/pvz2cthddev/utils/Consts$ResponseCode;

    move-result-object v0

    if-ltz p0, :cond_1

    .line 76
    array-length v1, v0

    if-lt p0, v1, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    aget-object p0, v0, p0

    return-object p0

    .line 78
    :cond_1
    :goto_0
    sget-object p0, Lcom/popcap/pvz2cthddev/utils/Consts$ResponseCode;->RESULT_ERROR:Lcom/popcap/pvz2cthddev/utils/Consts$ResponseCode;

    return-object p0
.end method

.method public static isOk(I)Z
    .locals 1

    .line 90
    sget-object v0, Lcom/popcap/pvz2cthddev/utils/Consts$ResponseCode;->RESULT_OK:Lcom/popcap/pvz2cthddev/utils/Consts$ResponseCode;

    invoke-virtual {v0}, Lcom/popcap/pvz2cthddev/utils/Consts$ResponseCode;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/popcap/pvz2cthddev/utils/Consts$ResponseCode;
    .locals 1

    .line 63
    const-class v0, Lcom/popcap/pvz2cthddev/utils/Consts$ResponseCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/popcap/pvz2cthddev/utils/Consts$ResponseCode;

    return-object p0
.end method

.method public static values()[Lcom/popcap/pvz2cthddev/utils/Consts$ResponseCode;
    .locals 1

    .line 63
    sget-object v0, Lcom/popcap/pvz2cthddev/utils/Consts$ResponseCode;->$VALUES:[Lcom/popcap/pvz2cthddev/utils/Consts$ResponseCode;

    invoke-virtual {v0}, [Lcom/popcap/pvz2cthddev/utils/Consts$ResponseCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/popcap/pvz2cthddev/utils/Consts$ResponseCode;

    return-object v0
.end method


# virtual methods
.method public isOk()Z
    .locals 1

    .line 85
    sget-object v0, Lcom/popcap/pvz2cthddev/utils/Consts$ResponseCode;->RESULT_OK:Lcom/popcap/pvz2cthddev/utils/Consts$ResponseCode;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
