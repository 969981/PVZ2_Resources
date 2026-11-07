.class public final Lgbsdk/optional/applog/ak$ab;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/optional/applog/ak;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lgbsdk/optional/applog/ak;


# direct methods
.method public constructor <init>(Lgbsdk/optional/applog/ak;)V
    .locals 0

    iput-object p1, p0, Lgbsdk/optional/applog/ak$ab;->a:Lgbsdk/optional/applog/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lgbsdk/optional/applog/ak$ab;->a:Lgbsdk/optional/applog/ak;

    .line 1
    iget-object v0, v0, Lgbsdk/optional/applog/ak;->b:Ljava/lang/Runnable;

    .line 2
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lgbsdk/optional/applog/ak$ab;->a:Lgbsdk/optional/applog/ak;

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, v0, Lgbsdk/optional/applog/ak;->a:Z

    return-void
.end method
