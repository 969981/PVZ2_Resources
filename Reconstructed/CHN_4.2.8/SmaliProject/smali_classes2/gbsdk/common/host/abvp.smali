.class public final Lgbsdk/common/host/abvp;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field public static a:Z

.field private static aKT:Lgbsdk/common/host/abvm;

.field private static aKU:Lgbsdk/common/host/abvm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lgbsdk/common/host/abvp$1;

    invoke-direct {v0}, Lgbsdk/common/host/abvp$1;-><init>()V

    .line 64
    sput-object v0, Lgbsdk/common/host/abvp;->aKT:Lgbsdk/common/host/abvm;

    sput-object v0, Lgbsdk/common/host/abvp;->aKU:Lgbsdk/common/host/abvm;

    return-void
.end method

.method public static varargs a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/String;)V
    .locals 1

    .line 126
    sget-object v0, Lgbsdk/common/host/abvp;->aKU:Lgbsdk/common/host/abvm;

    if-eqz v0, :cond_0

    .line 127
    invoke-interface {v0, p0, p1, p2}, Lgbsdk/common/host/abvm;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static varargs b(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .line 96
    sget-object v0, Lgbsdk/common/host/abvp;->aKU:Lgbsdk/common/host/abvm;

    if-eqz v0, :cond_0

    .line 97
    invoke-interface {v0, p0, p1}, Lgbsdk/common/host/abvm;->b(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static varargs c(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .line 120
    sget-object v0, Lgbsdk/common/host/abvp;->aKU:Lgbsdk/common/host/abvm;

    if-eqz v0, :cond_0

    .line 121
    invoke-interface {v0, p0, p1}, Lgbsdk/common/host/abvm;->c(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic j([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1019
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x190

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1020
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 1021
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1023
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
