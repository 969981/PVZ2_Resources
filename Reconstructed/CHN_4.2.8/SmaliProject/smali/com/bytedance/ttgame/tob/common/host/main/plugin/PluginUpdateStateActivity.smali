.class public Lcom/bytedance/ttgame/tob/common/host/main/plugin/PluginUpdateStateActivity;
.super Lcom/bytedance/ttgame/tob/common/host/framework/HostAppCompactBaseActivity;
.source "PluginUpdateStateActivity.java"


# static fields
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field private aCo:Landroid/widget/TextView;

.field private aCp:Landroid/widget/ProgressBar;

.field private aCq:Landroid/widget/TextView;

.field private aCr:Landroid/view/View;

.field public aCs:Z

.field private mStartTime:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Lcom/bytedance/ttgame/tob/common/host/framework/HostAppCompactBaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/bytedance/ttgame/tob/common/host/main/plugin/PluginUpdateStateActivity;->aCs:Z

    return-void
.end method

.method private B(I)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/bytedance/ttgame/tob/common/host/main/plugin/PluginUpdateStateActivity;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "ec9badf064cf8809612fee654ccddeec"

    invoke-static {v0, p0, v1, v2, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    :cond_1
    const/16 v0, 0x64

    if-le p1, v0, :cond_2

    const/16 p1, 0x64

    .line 174
    :cond_2
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/main/plugin/PluginUpdateStateActivity;->aCp:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method

.method public static aB(Landroid/content/Context;)V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/main/plugin/PluginUpdateStateActivity;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "fe4cf4f665056dc5e042bfcb67a34f2d"

    invoke-static {v1, v3, v2, v0, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    return-void

    .line 33
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/bytedance/ttgame/tob/common/host/main/plugin/PluginUpdateStateActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x10000000

    .line 34
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 35
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 36
    sget-object p0, Lgbsdk/common/host/absw;->aCx:Lgbsdk/common/host/absw;

    invoke-virtual {p0, v0}, Lgbsdk/common/host/absw;->A(Z)V

    return-void
.end method

.method private init()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/main/plugin/PluginUpdateStateActivity;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "860cd4f5e911611ebf0880c6578c9755"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 59
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/ttgame/tob/common/host/main/plugin/PluginUpdateStateActivity;->mStartTime:J

    const-string v0, "tv_update_info"

    const-string v1, "id"

    .line 60
    invoke-static {v0, v1}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/ttgame/tob/common/host/main/plugin/PluginUpdateStateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/main/plugin/PluginUpdateStateActivity;->aCo:Landroid/widget/TextView;

    const-string v0, "pb_update_progress"

    .line 61
    invoke-static {v0, v1}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/ttgame/tob/common/host/main/plugin/PluginUpdateStateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/main/plugin/PluginUpdateStateActivity;->aCp:Landroid/widget/ProgressBar;

    const-string v0, "tv_update_action"

    .line 62
    invoke-static {v0, v1}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/ttgame/tob/common/host/main/plugin/PluginUpdateStateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/main/plugin/PluginUpdateStateActivity;->aCq:Landroid/widget/TextView;

    const-string v0, "hint_view"

    .line 63
    invoke-static {v0, v1}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/ttgame/tob/common/host/main/plugin/PluginUpdateStateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/main/plugin/PluginUpdateStateActivity;->aCr:Landroid/view/View;

    const-string v0, "tv_update_title"

    .line 65
    invoke-static {v0, v1}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/ttgame/tob/common/host/main/plugin/PluginUpdateStateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Lgbsdk/common/host/abra;->eu()Lgbsdk/common/host/abra;

    move-result-object v1

    iget-object v1, v1, Lgbsdk/common/host/abra;->DH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/main/plugin/PluginUpdateStateActivity;->aCo:Landroid/widget/TextView;

    invoke-static {}, Lgbsdk/common/host/abra;->eu()Lgbsdk/common/host/abra;

    move-result-object v1

    iget-object v1, v1, Lgbsdk/common/host/abra;->DI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    sget-object v0, Lgbsdk/common/host/absw;->aCx:Lgbsdk/common/host/absw;

    invoke-virtual {v0}, Lgbsdk/common/host/absw;->ge()Lgbsdk/android/arch/lifecycle/LiveData;

    move-result-object v0

    .line 69
    new-instance v1, Lcom/bytedance/ttgame/tob/common/host/main/plugin/PluginUpdateStateActivity$1;

    invoke-direct {v1, p0}, Lcom/bytedance/ttgame/tob/common/host/main/plugin/PluginUpdateStateActivity$1;-><init>(Lcom/bytedance/ttgame/tob/common/host/main/plugin/PluginUpdateStateActivity;)V

    invoke-virtual {v0, p0, v1}, Lgbsdk/android/arch/lifecycle/LiveData;->observe(Lgbsdk/android/arch/lifecycle/LifecycleOwner;Lgbsdk/android/arch/lifecycle/Observer;)V

    .line 82
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/main/plugin/PluginUpdateStateActivity;->aCq:Landroid/widget/TextView;

    new-instance v1, Lcom/bytedance/ttgame/tob/common/host/main/plugin/PluginUpdateStateActivity$2;

    invoke-direct {v1, p0}, Lcom/bytedance/ttgame/tob/common/host/main/plugin/PluginUpdateStateActivity$2;-><init>(Lcom/bytedance/ttgame/tob/common/host/main/plugin/PluginUpdateStateActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a(Lgbsdk/common/host/abta;)V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    sget-object v3, Lcom/bytedance/ttgame/tob/common/host/main/plugin/PluginUpdateStateActivity;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "26db91a2b4ce5e5e6de20ee6a9fc60fe"

    invoke-static {v1, p0, v3, v2, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    return-void

    .line 112
    :cond_0
    iget v1, p1, Lgbsdk/common/host/abta;->state:I

    if-eq v1, v0, :cond_9

    const/4 v3, 0x2

    if-eq v1, v3, :cond_5

    const/4 v0, 0x3

    if-eq v1, v0, :cond_4

    const/4 v0, 0x4

    if-eq v1, v0, :cond_2

    const/4 v0, 0x5

    if-eq v1, v0, :cond_1

    goto/16 :goto_1

    .line 158
    :cond_1
    iget-object v0, p1, Lgbsdk/common/host/abta;->aCi:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 159
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/main/plugin/PluginUpdateStateActivity;->aCo:Landroid/widget/TextView;

    iget-object p1, p1, Lgbsdk/common/host/abta;->aCi:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_2
    const/16 p1, 0x64

    .line 135
    invoke-direct {p0, p1}, Lcom/bytedance/ttgame/tob/common/host/main/plugin/PluginUpdateStateActivity;->B(I)V

    .line 138
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "reason"

    const-string v1, "update_succ"

    .line 139
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "cost_time"

    .line 140
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/bytedance/ttgame/tob/common/host/main/plugin/PluginUpdateStateActivity;->mStartTime:J

    sub-long/2addr v1, v3

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 141
    sget-object v0, Lgbsdk/common/host/absw;->aCx:Lgbsdk/common/host/absw;

    const-string v1, "prepare_zeus_update_dialog_close"

    invoke-virtual {v0, v1, p1}, Lgbsdk/common/host/absw;->c(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 143
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 146
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/bytedance/ttgame/tob/common/host/main/plugin/PluginUpdateStateActivity;->mStartTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long p1, v0, v2

    if-gez p1, :cond_3

    .line 147
    iget-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/main/plugin/PluginUpdateStateActivity;->aCq:Landroid/widget/TextView;

    new-instance v0, Lcom/bytedance/ttgame/tob/common/host/main/plugin/PluginUpdateStateActivity$3;

    invoke-direct {v0, p0}, Lcom/bytedance/ttgame/tob/common/host/main/plugin/PluginUpdateStateActivity$3;-><init>(Lcom/bytedance/ttgame/tob/common/host/main/plugin/PluginUpdateStateActivity;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 154
    :cond_3
    invoke-virtual {p0}, Lcom/bytedance/ttgame/tob/common/host/main/plugin/PluginUpdateStateActivity;->finish()V

    goto :goto_1

    .line 132
    :cond_4
    iget p1, p1, Lgbsdk/common/host/abta;->aCh:I

    invoke-direct {p0, p1}, Lcom/bytedance/ttgame/tob/common/host/main/plugin/PluginUpdateStateActivity;->B(I)V

    goto :goto_1

    .line 117
    :cond_5
    iget-object v1, p1, Lgbsdk/common/host/abta;->aCi:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 118
    iget-object v1, p0, Lcom/bytedance/ttgame/tob/common/host/main/plugin/PluginUpdateStateActivity;->aCo:Landroid/widget/TextView;

    iget-object p1, p1, Lgbsdk/common/host/abta;->aCi:Ljava/lang/String;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    :cond_6
    iget-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/main/plugin/PluginUpdateStateActivity;->aCp:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result p1

    if-nez p1, :cond_7

    .line 121
    iget-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/main/plugin/PluginUpdateStateActivity;->aCp:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 122
    iget-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/main/plugin/PluginUpdateStateActivity;->aCr:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 125
    :cond_7
    iget-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/main/plugin/PluginUpdateStateActivity;->aCq:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_8

    .line 126
    iget-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/main/plugin/PluginUpdateStateActivity;->aCq:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 128
    :cond_8
    iget-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/main/plugin/PluginUpdateStateActivity;->aCq:Landroid/widget/TextView;

    const-string v1, "gbsdk_popup_plugin_update_exitapp"

    const-string v2, "string"

    invoke-static {v1, v2}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/bytedance/ttgame/tob/common/host/main/plugin/PluginUpdateStateActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iput-boolean v0, p0, Lcom/bytedance/ttgame/tob/common/host/main/plugin/PluginUpdateStateActivity;->aCs:Z

    goto :goto_1

    .line 114
    :cond_9
    invoke-virtual {p0}, Lcom/bytedance/ttgame/tob/common/host/main/plugin/PluginUpdateStateActivity;->finish()V

    :cond_a
    :goto_1
    return-void
.end method

.method public fX()V
    .locals 7

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/main/plugin/PluginUpdateStateActivity;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "bb411bb7f49a7867f84dc1a76eab52c6"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    return-void

    .line 94
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "reason"

    const-string v3, "restart"

    .line 95
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "cost_time"

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/bytedance/ttgame/tob/common/host/main/plugin/PluginUpdateStateActivity;->mStartTime:J

    sub-long/2addr v3, v5

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 97
    sget-object v2, Lgbsdk/common/host/absw;->aCx:Lgbsdk/common/host/absw;

    const-string v3, "prepare_zeus_update_dialog_close"

    invoke-virtual {v2, v3, v1}, Lgbsdk/common/host/absw;->c(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 98
    sget-object v1, Lgbsdk/common/host/absw;->aCx:Lgbsdk/common/host/absw;

    const-string v2, "prepare_zeus_click_restart"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lgbsdk/common/host/absw;->c(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 100
    invoke-virtual {p0}, Lcom/bytedance/ttgame/tob/common/host/main/plugin/PluginUpdateStateActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 101
    invoke-virtual {p0}, Lcom/bytedance/ttgame/tob/common/host/main/plugin/PluginUpdateStateActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 102
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 103
    invoke-static {v1}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    .line 104
    invoke-virtual {p0, v1}, Lcom/bytedance/ttgame/tob/common/host/main/plugin/PluginUpdateStateActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    :catchall_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Runtime;->exit(I)V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/main/plugin/PluginUpdateStateActivity;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "e8e2eeac9eef5acc292960c3134a84bb"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 41
    :cond_0
    invoke-super {p0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/HostAppCompactBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "gbsdk_layout_plugin_update"

    const-string v0, "layout"

    .line 42
    invoke-static {p1, v0}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/bytedance/ttgame/tob/common/host/main/plugin/PluginUpdateStateActivity;->setContentView(I)V

    .line 43
    invoke-direct {p0}, Lcom/bytedance/ttgame/tob/common/host/main/plugin/PluginUpdateStateActivity;->init()V

    return-void
.end method

.method public onDestroy()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/main/plugin/PluginUpdateStateActivity;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "aac617be56e582ee0f3f8218dcaaf886"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    return-void

    .line 53
    :cond_0
    invoke-super {p0}, Lcom/bytedance/ttgame/tob/common/host/framework/HostAppCompactBaseActivity;->onDestroy()V

    .line 55
    sget-object v1, Lgbsdk/common/host/absw;->aCx:Lgbsdk/common/host/absw;

    invoke-virtual {v1, v0}, Lgbsdk/common/host/absw;->A(Z)V

    return-void
.end method
