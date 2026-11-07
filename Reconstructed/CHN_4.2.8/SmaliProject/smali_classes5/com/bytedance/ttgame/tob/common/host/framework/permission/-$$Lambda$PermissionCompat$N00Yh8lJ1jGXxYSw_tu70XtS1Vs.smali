.class public final synthetic Lcom/bytedance/ttgame/tob/common/host/framework/permission/-$$Lambda$PermissionCompat$N00Yh8lJ1jGXxYSw_tu70XtS1Vs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/bytedance/ttgame/tob/common/host/framework/permission/IPermissionReqListener;


# instance fields
.field public final synthetic f$0:[Ljava/lang/String;

.field public final synthetic f$1:Lcom/bytedance/ttgame/tob/common/host/framework/permission/IPermissionReqListener;

.field public final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>([Ljava/lang/String;Lcom/bytedance/ttgame/tob/common/host/framework/permission/IPermissionReqListener;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/permission/-$$Lambda$PermissionCompat$N00Yh8lJ1jGXxYSw_tu70XtS1Vs;->f$0:[Ljava/lang/String;

    iput-object p2, p0, Lcom/bytedance/ttgame/tob/common/host/framework/permission/-$$Lambda$PermissionCompat$N00Yh8lJ1jGXxYSw_tu70XtS1Vs;->f$1:Lcom/bytedance/ttgame/tob/common/host/framework/permission/IPermissionReqListener;

    iput-object p3, p0, Lcom/bytedance/ttgame/tob/common/host/framework/permission/-$$Lambda$PermissionCompat$N00Yh8lJ1jGXxYSw_tu70XtS1Vs;->f$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onPermissionRequest(Z[Ljava/lang/String;[I)V
    .locals 6

    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/permission/-$$Lambda$PermissionCompat$N00Yh8lJ1jGXxYSw_tu70XtS1Vs;->f$0:[Ljava/lang/String;

    iget-object v1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/permission/-$$Lambda$PermissionCompat$N00Yh8lJ1jGXxYSw_tu70XtS1Vs;->f$1:Lcom/bytedance/ttgame/tob/common/host/framework/permission/IPermissionReqListener;

    iget-object v2, p0, Lcom/bytedance/ttgame/tob/common/host/framework/permission/-$$Lambda$PermissionCompat$N00Yh8lJ1jGXxYSw_tu70XtS1Vs;->f$2:Ljava/util/List;

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ttgame/tob/common/host/framework/permission/PermissionCompat;->lambda$N00Yh8lJ1jGXxYSw_tu70XtS1Vs([Ljava/lang/String;Lcom/bytedance/ttgame/tob/common/host/framework/permission/IPermissionReqListener;Ljava/util/List;Z[Ljava/lang/String;[I)V

    return-void
.end method
