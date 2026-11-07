.class public final enum Lcom/talkweb/sdk/vo/VerifySMSType;
.super Ljava/lang/Enum;
.source "VerifySMSType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/talkweb/sdk/vo/VerifySMSType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/talkweb/sdk/vo/VerifySMSType;

.field public static final enum bindPhone:Lcom/talkweb/sdk/vo/VerifySMSType;

.field public static final enum forgetPassword:Lcom/talkweb/sdk/vo/VerifySMSType;

.field public static final enum modifyPhone:Lcom/talkweb/sdk/vo/VerifySMSType;

.field public static final enum register:Lcom/talkweb/sdk/vo/VerifySMSType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 14
    new-instance v0, Lcom/talkweb/sdk/vo/VerifySMSType;

    const-string v1, "register"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/talkweb/sdk/vo/VerifySMSType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/talkweb/sdk/vo/VerifySMSType;->register:Lcom/talkweb/sdk/vo/VerifySMSType;

    .line 15
    new-instance v0, Lcom/talkweb/sdk/vo/VerifySMSType;

    const-string v1, "forgetPassword"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/talkweb/sdk/vo/VerifySMSType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/talkweb/sdk/vo/VerifySMSType;->forgetPassword:Lcom/talkweb/sdk/vo/VerifySMSType;

    .line 16
    new-instance v0, Lcom/talkweb/sdk/vo/VerifySMSType;

    const-string v1, "bindPhone"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/talkweb/sdk/vo/VerifySMSType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/talkweb/sdk/vo/VerifySMSType;->bindPhone:Lcom/talkweb/sdk/vo/VerifySMSType;

    .line 17
    new-instance v0, Lcom/talkweb/sdk/vo/VerifySMSType;

    const-string v1, "modifyPhone"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/talkweb/sdk/vo/VerifySMSType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/talkweb/sdk/vo/VerifySMSType;->modifyPhone:Lcom/talkweb/sdk/vo/VerifySMSType;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/talkweb/sdk/vo/VerifySMSType;

    .line 13
    sget-object v6, Lcom/talkweb/sdk/vo/VerifySMSType;->register:Lcom/talkweb/sdk/vo/VerifySMSType;

    aput-object v6, v1, v2

    sget-object v2, Lcom/talkweb/sdk/vo/VerifySMSType;->forgetPassword:Lcom/talkweb/sdk/vo/VerifySMSType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/talkweb/sdk/vo/VerifySMSType;->bindPhone:Lcom/talkweb/sdk/vo/VerifySMSType;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/talkweb/sdk/vo/VerifySMSType;->ENUM$VALUES:[Lcom/talkweb/sdk/vo/VerifySMSType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/talkweb/sdk/vo/VerifySMSType;
    .locals 1

    .line 1
    const-class v0, Lcom/talkweb/sdk/vo/VerifySMSType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/talkweb/sdk/vo/VerifySMSType;

    return-object p0
.end method

.method public static values()[Lcom/talkweb/sdk/vo/VerifySMSType;
    .locals 4

    .line 1
    sget-object v0, Lcom/talkweb/sdk/vo/VerifySMSType;->ENUM$VALUES:[Lcom/talkweb/sdk/vo/VerifySMSType;

    array-length v1, v0

    new-array v2, v1, [Lcom/talkweb/sdk/vo/VerifySMSType;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
