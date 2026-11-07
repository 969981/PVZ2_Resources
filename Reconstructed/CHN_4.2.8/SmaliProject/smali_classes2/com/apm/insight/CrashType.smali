.class public final enum Lcom/apm/insight/CrashType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/apm/insight/CrashType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/apm/insight/CrashType;

.field public static final enum ALL:Lcom/apm/insight/CrashType;

.field public static final enum ANR:Lcom/apm/insight/CrashType;

.field public static final enum ASAN:Lcom/apm/insight/CrashType;

.field public static final enum BLOCK:Lcom/apm/insight/CrashType;

.field public static final enum CUSTOM_JAVA:Lcom/apm/insight/CrashType;

.field public static final enum DART:Lcom/apm/insight/CrashType;

.field public static final enum ENSURE:Lcom/apm/insight/CrashType;

.field public static final enum EXIT:Lcom/apm/insight/CrashType;

.field public static final enum JAVA:Lcom/apm/insight/CrashType;

.field public static final enum LAUNCH:Lcom/apm/insight/CrashType;

.field public static final enum NATIVE:Lcom/apm/insight/CrashType;

.field public static final enum OOM:Lcom/apm/insight/CrashType;

.field public static final enum PORTRAIT:Lcom/apm/insight/CrashType;

.field public static final enum TSAN:Lcom/apm/insight/CrashType;


# instance fields
.field private mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/apm/insight/CrashType;

    const-string v1, "LAUNCH"

    const/4 v2, 0x0

    const-string v3, "launch"

    invoke-direct {v0, v1, v2, v3}, Lcom/apm/insight/CrashType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/apm/insight/CrashType;->LAUNCH:Lcom/apm/insight/CrashType;

    new-instance v0, Lcom/apm/insight/CrashType;

    const-string v1, "JAVA"

    const/4 v3, 0x1

    const-string v4, "java"

    invoke-direct {v0, v1, v3, v4}, Lcom/apm/insight/CrashType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/apm/insight/CrashType;->JAVA:Lcom/apm/insight/CrashType;

    new-instance v0, Lcom/apm/insight/CrashType;

    const-string v1, "NATIVE"

    const/4 v4, 0x2

    const-string v5, "native"

    invoke-direct {v0, v1, v4, v5}, Lcom/apm/insight/CrashType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/apm/insight/CrashType;->NATIVE:Lcom/apm/insight/CrashType;

    new-instance v0, Lcom/apm/insight/CrashType;

    const-string v1, "ASAN"

    const/4 v5, 0x3

    const-string v6, "asan"

    invoke-direct {v0, v1, v5, v6}, Lcom/apm/insight/CrashType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/apm/insight/CrashType;->ASAN:Lcom/apm/insight/CrashType;

    new-instance v0, Lcom/apm/insight/CrashType;

    const-string v1, "TSAN"

    const/4 v6, 0x4

    const-string v7, "tsan"

    invoke-direct {v0, v1, v6, v7}, Lcom/apm/insight/CrashType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/apm/insight/CrashType;->TSAN:Lcom/apm/insight/CrashType;

    new-instance v0, Lcom/apm/insight/CrashType;

    const-string v1, "ANR"

    const/4 v7, 0x5

    const-string v8, "anr"

    invoke-direct {v0, v1, v7, v8}, Lcom/apm/insight/CrashType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/apm/insight/CrashType;->ANR:Lcom/apm/insight/CrashType;

    new-instance v0, Lcom/apm/insight/CrashType;

    const-string v1, "BLOCK"

    const/4 v8, 0x6

    const-string v9, "block"

    invoke-direct {v0, v1, v8, v9}, Lcom/apm/insight/CrashType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/apm/insight/CrashType;->BLOCK:Lcom/apm/insight/CrashType;

    new-instance v0, Lcom/apm/insight/CrashType;

    const-string v1, "ENSURE"

    const/4 v9, 0x7

    const-string v10, "ensure"

    invoke-direct {v0, v1, v9, v10}, Lcom/apm/insight/CrashType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/apm/insight/CrashType;->ENSURE:Lcom/apm/insight/CrashType;

    new-instance v0, Lcom/apm/insight/CrashType;

    const-string v1, "DART"

    const/16 v10, 0x8

    const-string v11, "dart"

    invoke-direct {v0, v1, v10, v11}, Lcom/apm/insight/CrashType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/apm/insight/CrashType;->DART:Lcom/apm/insight/CrashType;

    new-instance v0, Lcom/apm/insight/CrashType;

    const-string v1, "CUSTOM_JAVA"

    const/16 v11, 0x9

    const-string v12, "custom_java"

    invoke-direct {v0, v1, v11, v12}, Lcom/apm/insight/CrashType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/apm/insight/CrashType;->CUSTOM_JAVA:Lcom/apm/insight/CrashType;

    new-instance v0, Lcom/apm/insight/CrashType;

    const-string v1, "OOM"

    const/16 v12, 0xa

    const-string v13, "oom"

    invoke-direct {v0, v1, v12, v13}, Lcom/apm/insight/CrashType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/apm/insight/CrashType;->OOM:Lcom/apm/insight/CrashType;

    new-instance v0, Lcom/apm/insight/CrashType;

    const-string v1, "ALL"

    const/16 v13, 0xb

    const-string v14, "all"

    invoke-direct {v0, v1, v13, v14}, Lcom/apm/insight/CrashType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/apm/insight/CrashType;->ALL:Lcom/apm/insight/CrashType;

    new-instance v0, Lcom/apm/insight/CrashType;

    const-string v1, "EXIT"

    const/16 v14, 0xc

    const-string v15, "exit"

    invoke-direct {v0, v1, v14, v15}, Lcom/apm/insight/CrashType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/apm/insight/CrashType;->EXIT:Lcom/apm/insight/CrashType;

    new-instance v0, Lcom/apm/insight/CrashType;

    const-string v1, "PORTRAIT"

    const/16 v15, 0xd

    const-string v14, "portrait"

    invoke-direct {v0, v1, v15, v14}, Lcom/apm/insight/CrashType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/apm/insight/CrashType;->PORTRAIT:Lcom/apm/insight/CrashType;

    const/16 v1, 0xe

    new-array v1, v1, [Lcom/apm/insight/CrashType;

    sget-object v14, Lcom/apm/insight/CrashType;->LAUNCH:Lcom/apm/insight/CrashType;

    aput-object v14, v1, v2

    sget-object v2, Lcom/apm/insight/CrashType;->JAVA:Lcom/apm/insight/CrashType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/apm/insight/CrashType;->NATIVE:Lcom/apm/insight/CrashType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/apm/insight/CrashType;->ASAN:Lcom/apm/insight/CrashType;

    aput-object v2, v1, v5

    sget-object v2, Lcom/apm/insight/CrashType;->TSAN:Lcom/apm/insight/CrashType;

    aput-object v2, v1, v6

    sget-object v2, Lcom/apm/insight/CrashType;->ANR:Lcom/apm/insight/CrashType;

    aput-object v2, v1, v7

    sget-object v2, Lcom/apm/insight/CrashType;->BLOCK:Lcom/apm/insight/CrashType;

    aput-object v2, v1, v8

    sget-object v2, Lcom/apm/insight/CrashType;->ENSURE:Lcom/apm/insight/CrashType;

    aput-object v2, v1, v9

    sget-object v2, Lcom/apm/insight/CrashType;->DART:Lcom/apm/insight/CrashType;

    aput-object v2, v1, v10

    sget-object v2, Lcom/apm/insight/CrashType;->CUSTOM_JAVA:Lcom/apm/insight/CrashType;

    aput-object v2, v1, v11

    sget-object v2, Lcom/apm/insight/CrashType;->OOM:Lcom/apm/insight/CrashType;

    aput-object v2, v1, v12

    sget-object v2, Lcom/apm/insight/CrashType;->ALL:Lcom/apm/insight/CrashType;

    aput-object v2, v1, v13

    sget-object v2, Lcom/apm/insight/CrashType;->EXIT:Lcom/apm/insight/CrashType;

    const/16 v3, 0xc

    aput-object v2, v1, v3

    aput-object v0, v1, v15

    sput-object v1, Lcom/apm/insight/CrashType;->$VALUES:[Lcom/apm/insight/CrashType;

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

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/apm/insight/CrashType;->mName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/apm/insight/CrashType;
    .locals 1

    const-class v0, Lcom/apm/insight/CrashType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/apm/insight/CrashType;

    return-object p0
.end method

.method public static values()[Lcom/apm/insight/CrashType;
    .locals 1

    sget-object v0, Lcom/apm/insight/CrashType;->$VALUES:[Lcom/apm/insight/CrashType;

    invoke-virtual {v0}, [Lcom/apm/insight/CrashType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/apm/insight/CrashType;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/apm/insight/CrashType;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/apm/insight/CrashType;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
