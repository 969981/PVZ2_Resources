.class public Lgbsdk/common/host/abre$ab;
.super Lgbsdk/android/support/v7/widget/RecyclerView$ViewHolder;
.source "DebugInfoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/common/host/abre;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ab"
.end annotation


# instance fields
.field Dm:Landroid/widget/TextView;

.field Dn:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 72
    invoke-direct {p0, p1}, Lgbsdk/android/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const-string v0, "tv_name"

    const-string v1, "id"

    .line 73
    invoke-static {v0, v1}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lgbsdk/common/host/abre$ab;->Dm:Landroid/widget/TextView;

    const-string v0, "tv_value"

    .line 74
    invoke-static {v0, v1}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lgbsdk/common/host/abre$ab;->Dn:Landroid/widget/TextView;

    return-void
.end method
