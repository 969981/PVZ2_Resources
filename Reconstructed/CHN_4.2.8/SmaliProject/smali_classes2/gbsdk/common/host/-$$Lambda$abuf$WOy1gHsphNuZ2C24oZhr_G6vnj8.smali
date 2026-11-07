.class public final synthetic Lgbsdk/common/host/-$$Lambda$abuf$WOy1gHsphNuZ2C24oZhr_G6vnj8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Ljava/lang/Exception;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgbsdk/common/host/-$$Lambda$abuf$WOy1gHsphNuZ2C24oZhr_G6vnj8;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lgbsdk/common/host/-$$Lambda$abuf$WOy1gHsphNuZ2C24oZhr_G6vnj8;->f$1:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lgbsdk/common/host/-$$Lambda$abuf$WOy1gHsphNuZ2C24oZhr_G6vnj8;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lgbsdk/common/host/-$$Lambda$abuf$WOy1gHsphNuZ2C24oZhr_G6vnj8;->f$1:Ljava/lang/Exception;

    invoke-static {v0, v1}, Lgbsdk/common/host/abuf;->lambda$WOy1gHsphNuZ2C24oZhr_G6vnj8(Landroid/content/Context;Ljava/lang/Exception;)V

    return-void
.end method
