.class public final enum Lcom/talkweb/twOfflineSdk/paycfg/PayConfigUtil$ChannelType;
.super Ljava/lang/Enum;
.source "PayConfigUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/talkweb/twOfflineSdk/paycfg/PayConfigUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ChannelType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/talkweb/twOfflineSdk/paycfg/PayConfigUtil$ChannelType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/talkweb/twOfflineSdk/paycfg/PayConfigUtil$ChannelType;

.field public static final enum CHANNEL:Lcom/talkweb/twOfflineSdk/paycfg/PayConfigUtil$ChannelType;

.field public static final enum CM:Lcom/talkweb/twOfflineSdk/paycfg/PayConfigUtil$ChannelType;

.field public static final enum CT:Lcom/talkweb/twOfflineSdk/paycfg/PayConfigUtil$ChannelType;

.field public static final enum CU:Lcom/talkweb/twOfflineSdk/paycfg/PayConfigUtil$ChannelType;

.field public static final enum MM:Lcom/talkweb/twOfflineSdk/paycfg/PayConfigUtil$ChannelType;


# instance fields
.field private final text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 37
    new-instance v0, Lcom/talkweb/twOfflineSdk/paycfg/PayConfigUtil$ChannelType;

    const-string v1, "CHANNEL"

    const/4 v2, 0x0

    const-string v3, "NONE"

    invoke-direct {v0, v1, v2, v3}, Lcom/talkweb/twOfflineSdk/paycfg/PayConfigUtil$ChannelType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/talkweb/twOfflineSdk/paycfg/PayConfigUtil$ChannelType;->CHANNEL:Lcom/talkweb/twOfflineSdk/paycfg/PayConfigUtil$ChannelType;

    new-instance v0, Lcom/talkweb/twOfflineSdk/paycfg/PayConfigUtil$ChannelType;

    const-string v1, "MM"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v1}, Lcom/talkweb/twOfflineSdk/paycfg/PayConfigUtil$ChannelType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/talkweb/twOfflineSdk/paycfg/PayConfigUtil$ChannelType;->MM:Lcom/talkweb/twOfflineSdk/paycfg/PayConfigUtil$ChannelType;

    new-instance v0, Lcom/talkweb/twOfflineSdk/paycfg/PayConfigUtil$ChannelType;

    const-string v1, "CM"

    const/4 v4, 0x2

    const-string v5, "CMCC"

    invoke-direct {v0, v1, v4, v5}, Lcom/talkweb/twOfflineSdk/paycfg/PayConfigUtil$ChannelType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/talkweb/twOfflineSdk/paycfg/PayConfigUtil$ChannelType;->CM:Lcom/talkweb/twOfflineSdk/paycfg/PayConfigUtil$ChannelType;

    new-instance v0, Lcom/talkweb/twOfflineSdk/paycfg/PayConfigUtil$ChannelType;

    const-string v1, "CU"

    const/4 v5, 0x3

    const-string v6, "CUCC"

    invoke-direct {v0, v1, v5, v6}, Lcom/talkweb/twOfflineSdk/paycfg/PayConfigUtil$ChannelType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/talkweb/twOfflineSdk/paycfg/PayConfigUtil$ChannelType;->CU:Lcom/talkweb/twOfflineSdk/paycfg/PayConfigUtil$ChannelType;

    new-instance v0, Lcom/talkweb/twOfflineSdk/paycfg/PayConfigUtil$ChannelType;

    const-string v1, "CT"

    const/4 v6, 0x4

    const-string v7, "CTCC"

    invoke-direct {v0, v1, v6, v7}, Lcom/talkweb/twOfflineSdk/paycfg/PayConfigUtil$ChannelType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/talkweb/twOfflineSdk/paycfg/PayConfigUtil$ChannelType;->CT:Lcom/talkweb/twOfflineSdk/paycfg/PayConfigUtil$ChannelType;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/talkweb/twOfflineSdk/paycfg/PayConfigUtil$ChannelType;

    .line 36
    sget-object v7, Lcom/talkweb/twOfflineSdk/paycfg/PayConfigUtil$ChannelType;->CHANNEL:Lcom/talkweb/twOfflineSdk/paycfg/PayConfigUtil$ChannelType;

    aput-object v7, v1, v2

    sget-object v2, Lcom/talkweb/twOfflineSdk/paycfg/PayConfigUtil$ChannelType;->MM:Lcom/talkweb/twOfflineSdk/paycfg/PayConfigUtil$ChannelType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/talkweb/twOfflineSdk/paycfg/PayConfigUtil$ChannelType;->CM:Lcom/talkweb/twOfflineSdk/paycfg/PayConfigUtil$ChannelType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/talkweb/twOfflineSdk/paycfg/PayConfigUtil$ChannelType;->CU:Lcom/talkweb/twOfflineSdk/paycfg/PayConfigUtil$ChannelType;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lcom/talkweb/twOfflineSdk/paycfg/PayConfigUtil$ChannelType;->$VALUES:[Lcom/talkweb/twOfflineSdk/paycfg/PayConfigUtil$ChannelType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 41
    iput-object p3, p0, Lcom/talkweb/twOfflineSdk/paycfg/PayConfigUtil$ChannelType;->text:Ljava/lang/String;

    return-void
.end method

.method public static getEnum(Ljava/lang/String;)Lcom/talkweb/twOfflineSdk/paycfg/PayConfigUtil$ChannelType;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 52
    :cond_0
    invoke-static {}, Lcom/talkweb/twOfflineSdk/paycfg/PayConfigUtil$ChannelType;->values()[Lcom/talkweb/twOfflineSdk/paycfg/PayConfigUtil$ChannelType;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 53
    invoke-virtual {v4}, Lcom/talkweb/twOfflineSdk/paycfg/PayConfigUtil$ChannelType;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    return-object v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/talkweb/twOfflineSdk/paycfg/PayConfigUtil$ChannelType;
    .locals 1

    .line 36
    const-class v0, Lcom/talkweb/twOfflineSdk/paycfg/PayConfigUtil$ChannelType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/talkweb/twOfflineSdk/paycfg/PayConfigUtil$ChannelType;

    return-object p0
.end method

.method public static values()[Lcom/talkweb/twOfflineSdk/paycfg/PayConfigUtil$ChannelType;
    .locals 1

    .line 36
    sget-object v0, Lcom/talkweb/twOfflineSdk/paycfg/PayConfigUtil$ChannelType;->$VALUES:[Lcom/talkweb/twOfflineSdk/paycfg/PayConfigUtil$ChannelType;

    invoke-virtual {v0}, [Lcom/talkweb/twOfflineSdk/paycfg/PayConfigUtil$ChannelType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/talkweb/twOfflineSdk/paycfg/PayConfigUtil$ChannelType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/paycfg/PayConfigUtil$ChannelType;->text:Ljava/lang/String;

    return-object v0
.end method
