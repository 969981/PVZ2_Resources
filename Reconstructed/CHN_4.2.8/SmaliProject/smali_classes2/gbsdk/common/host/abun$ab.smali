.class public final Lgbsdk/common/host/abun$ab;
.super Ljava/lang/Object;
.source "SdkInitHelper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/common/host/abun;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ab"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/bytedance/ttgame/tob/common/host/main/SdkInitHelper$InitData;",
        "",
        "activity",
        "Landroid/app/Activity;",
        "callback",
        "Lcom/bytedance/ttgame/tob/common/host/api/callback/InitCallback;",
        "(Landroid/app/Activity;Lcom/bytedance/ttgame/tob/common/host/api/callback/InitCallback;)V",
        "getActivity",
        "()Landroid/app/Activity;",
        "getCallback",
        "()Lcom/bytedance/ttgame/tob/common/host/api/callback/InitCallback;",
        "ch_main_tobRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final aAb:Landroid/app/Activity;

.field public final aAc:Lcom/bytedance/ttgame/tob/common/host/api/callback/InitCallback;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/bytedance/ttgame/tob/common/host/api/callback/InitCallback;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgbsdk/common/host/abun$ab;->aAb:Landroid/app/Activity;

    iput-object p2, p0, Lgbsdk/common/host/abun$ab;->aAc:Lcom/bytedance/ttgame/tob/common/host/api/callback/InitCallback;

    return-void
.end method
