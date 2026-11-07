.class public Lcom/bytedance/ttgame/tob/common/host/framework/permission/PermissionActivity;
.super Lcom/bytedance/ttgame/tob/common/host/framework/HostAppCompactBaseActivity;
.source "PermissionActivity.java"


# static fields
.field private static final FRAGMENT_TAG:Ljava/lang/String; = "tag_permission"

.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/bytedance/ttgame/tob/common/host/framework/HostAppCompactBaseActivity;-><init>()V

    return-void
.end method

.method private clearBackStack(Lgbsdk/android/support/v4/app/FragmentManager;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/permission/PermissionActivity;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "f1538f276f9fed83b6df5833d8e76dfc"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 90
    :cond_0
    invoke-virtual {p1}, Lgbsdk/android/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 92
    invoke-virtual {p1}, Lgbsdk/android/support/v4/app/FragmentManager;->popBackStack()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private replace(Lgbsdk/android/support/v4/app/Fragment;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/permission/PermissionActivity;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "c15bd4b23e7e73707357e5e4641e2e8b"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/ttgame/tob/common/host/framework/permission/PermissionActivity;->getSupportFragmentManager()Lgbsdk/android/support/v4/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    .line 79
    :cond_1
    :try_start_0
    invoke-direct {p0, v0}, Lcom/bytedance/ttgame/tob/common/host/framework/permission/PermissionActivity;->clearBackStack(Lgbsdk/android/support/v4/app/FragmentManager;)V

    .line 80
    invoke-virtual {v0}, Lgbsdk/android/support/v4/app/FragmentManager;->beginTransaction()Lgbsdk/android/support/v4/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "fragment_container"

    const-string v3, "id"

    invoke-static {v2, v3}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v3, "tag_permission"

    .line 81
    invoke-virtual {v1, v2, p1, v3}, Lgbsdk/android/support/v4/app/FragmentTransaction;->replace(ILgbsdk/android/support/v4/app/Fragment;Ljava/lang/String;)Lgbsdk/android/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 82
    invoke-virtual {p1}, Lgbsdk/android/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 83
    invoke-virtual {v0}, Lgbsdk/android/support/v4/app/FragmentManager;->executePendingTransactions()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 85
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/permission/PermissionActivity;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "f6ada48d97b8c22c9167ce084c2a28b2"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    return-void

    .line 67
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/ttgame/tob/common/host/framework/permission/PermissionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/ttgame/tob/common/host/framework/permission/PermissionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "key_allow_close"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    invoke-super {p0}, Lcom/bytedance/ttgame/tob/common/host/framework/HostAppCompactBaseActivity;->onBackPressed()V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/permission/PermissionActivity;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "cccba0e8054637b519b537f4d66de3bf"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 24
    :cond_0
    invoke-super {p0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/HostAppCompactBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "gbsdk_activity_permission_tips"

    const-string v0, "layout"

    .line 25
    invoke-static {p1, v0}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/permission/PermissionActivity;->setContentView(I)V

    .line 26
    invoke-virtual {p0}, Lcom/bytedance/ttgame/tob/common/host/framework/permission/PermissionActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 28
    invoke-virtual {p0}, Lcom/bytedance/ttgame/tob/common/host/framework/permission/PermissionActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_1

    .line 29
    invoke-virtual {p0}, Lcom/bytedance/ttgame/tob/common/host/framework/permission/PermissionActivity;->finish()V

    return-void

    .line 33
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/ttgame/tob/common/host/framework/permission/PermissionActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "key_request_code"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 34
    invoke-virtual {p0}, Lcom/bytedance/ttgame/tob/common/host/framework/permission/PermissionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "key_permissions"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz p1, :cond_3

    if-eqz v0, :cond_3

    .line 35
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 41
    :cond_2
    invoke-static {p1, v0}, Lcom/bytedance/ttgame/tob/common/host/framework/permission/PermissionFragment;->newInstance(ILjava/util/ArrayList;)Lcom/bytedance/ttgame/tob/common/host/framework/permission/PermissionFragment;

    move-result-object p1

    .line 42
    invoke-direct {p0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/permission/PermissionActivity;->replace(Lgbsdk/android/support/v4/app/Fragment;)V

    return-void

    .line 36
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/bytedance/ttgame/tob/common/host/framework/permission/PermissionActivity;->finish()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    sget-object v1, Lcom/bytedance/ttgame/tob/common/host/framework/permission/PermissionActivity;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "571d4021b169b5365bbf42cba52f3e85"

    invoke-static {v0, p0, v1, v2, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 47
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/bytedance/ttgame/tob/common/host/framework/HostAppCompactBaseActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 48
    invoke-static {p0, p1, p2, p3}, Lcom/bytedance/ttgame/tob/common/host/framework/permission/PermissionController;->dispatchPermissionResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V

    .line 51
    :try_start_0
    invoke-virtual {p0}, Lcom/bytedance/ttgame/tob/common/host/framework/permission/PermissionActivity;->getSupportFragmentManager()Lgbsdk/android/support/v4/app/FragmentManager;

    move-result-object p1

    const-string p2, "tag_permission"

    .line 52
    invoke-virtual {p1, p2}, Lgbsdk/android/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Lgbsdk/android/support/v4/app/Fragment;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 54
    invoke-virtual {p1}, Lgbsdk/android/support/v4/app/FragmentManager;->beginTransaction()Lgbsdk/android/support/v4/app/FragmentTransaction;

    move-result-object p3

    .line 55
    invoke-virtual {p3, p2}, Lgbsdk/android/support/v4/app/FragmentTransaction;->remove(Lgbsdk/android/support/v4/app/Fragment;)Lgbsdk/android/support/v4/app/FragmentTransaction;

    move-result-object p2

    .line 56
    invoke-virtual {p2}, Lgbsdk/android/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 57
    invoke-virtual {p1}, Lgbsdk/android/support/v4/app/FragmentManager;->executePendingTransactions()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 60
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 62
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/bytedance/ttgame/tob/common/host/framework/permission/PermissionActivity;->finish()V

    return-void
.end method
