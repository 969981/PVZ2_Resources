.class public abstract Lgbsdk/common/host/abmk;
.super Ljava/lang/Object;
.source "DispatchStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgbsdk/common/host/abmk$ab;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public rd:Lgbsdk/common/host/abmk$ab;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    const-class v0, Lgbsdk/common/host/abmk;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgbsdk/common/host/abmk;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lgbsdk/common/host/abmk$ab;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lgbsdk/common/host/abmk;->rd:Lgbsdk/common/host/abmk$ab;

    return-void
.end method

.method public static a(Lgbsdk/common/host/abmk$ab;Lorg/json/JSONObject;Ljava/lang/String;JI)Lgbsdk/common/host/abmk;
    .locals 0

    .line 36
    sget-object p2, Lgbsdk/common/host/abmk$1;->re:[I

    invoke-virtual {p0}, Lgbsdk/common/host/abmk$ab;->ordinal()I

    move-result p3

    aget p2, p2, p3

    const/4 p3, 0x1

    if-eq p2, p3, :cond_0

    .line 40
    sget-object p1, Lgbsdk/common/host/abmk;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "dispatch strategy "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is not supported, fallback to default strategy"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    new-instance p0, Lgbsdk/common/host/abln;

    invoke-direct {p0}, Lgbsdk/common/host/abln;-><init>()V

    return-object p0

    .line 38
    :cond_0
    new-instance p0, Lgbsdk/common/host/abme;

    invoke-direct {p0, p1}, Lgbsdk/common/host/abme;-><init>(Lorg/json/JSONObject;)V

    return-object p0
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;ZI)V
.end method

.method public abstract b(Landroid/net/Uri;)Ljava/lang/String;
.end method

.method public abstract cr()Z
.end method
