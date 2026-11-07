.class public final Lgbsdk/common/host/abod$ab;
.super Ljava/lang/Object;
.source "LogEventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/common/host/abod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ab"
.end annotation


# static fields
.field public static final uH:Lgbsdk/common/host/abod;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Lgbsdk/common/host/abod;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgbsdk/common/host/abod;-><init>(Lgbsdk/common/host/abod$1;)V

    sput-object v0, Lgbsdk/common/host/abod$ab;->uH:Lgbsdk/common/host/abod;

    return-void
.end method
