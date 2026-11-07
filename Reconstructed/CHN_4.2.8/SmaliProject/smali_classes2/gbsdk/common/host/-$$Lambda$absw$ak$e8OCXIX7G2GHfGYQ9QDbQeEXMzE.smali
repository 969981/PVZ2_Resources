.class public final synthetic Lgbsdk/common/host/-$$Lambda$absw$ak$e8OCXIX7G2GHfGYQ9QDbQeEXMzE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:J

.field public final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(ZJLjava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lgbsdk/common/host/-$$Lambda$absw$ak$e8OCXIX7G2GHfGYQ9QDbQeEXMzE;->f$0:Z

    iput-wide p2, p0, Lgbsdk/common/host/-$$Lambda$absw$ak$e8OCXIX7G2GHfGYQ9QDbQeEXMzE;->f$1:J

    iput-object p4, p0, Lgbsdk/common/host/-$$Lambda$absw$ak$e8OCXIX7G2GHfGYQ9QDbQeEXMzE;->f$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-boolean v0, p0, Lgbsdk/common/host/-$$Lambda$absw$ak$e8OCXIX7G2GHfGYQ9QDbQeEXMzE;->f$0:Z

    iget-wide v1, p0, Lgbsdk/common/host/-$$Lambda$absw$ak$e8OCXIX7G2GHfGYQ9QDbQeEXMzE;->f$1:J

    iget-object v3, p0, Lgbsdk/common/host/-$$Lambda$absw$ak$e8OCXIX7G2GHfGYQ9QDbQeEXMzE;->f$2:Ljava/util/List;

    invoke-static {v0, v1, v2, v3}, Lgbsdk/common/host/absw$ak;->lambda$e8OCXIX7G2GHfGYQ9QDbQeEXMzE(ZJLjava/util/List;)V

    return-void
.end method
