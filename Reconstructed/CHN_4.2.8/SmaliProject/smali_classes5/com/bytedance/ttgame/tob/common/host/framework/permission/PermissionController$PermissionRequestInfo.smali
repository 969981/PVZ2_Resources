.class public Lcom/bytedance/ttgame/tob/common/host/framework/permission/PermissionController$PermissionRequestInfo;
.super Ljava/lang/Object;
.source "PermissionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ttgame/tob/common/host/framework/permission/PermissionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PermissionRequestInfo"
.end annotation


# instance fields
.field public listener:Lcom/bytedance/ttgame/tob/common/host/framework/permission/IPermissionReqListener;

.field public shouldNotReqPermissions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/permission/PermissionController$PermissionRequestInfo;->shouldNotReqPermissions:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/ttgame/tob/common/host/framework/permission/PermissionController$1;)V
    .locals 0

    .line 204
    invoke-direct {p0}, Lcom/bytedance/ttgame/tob/common/host/framework/permission/PermissionController$PermissionRequestInfo;-><init>()V

    return-void
.end method
