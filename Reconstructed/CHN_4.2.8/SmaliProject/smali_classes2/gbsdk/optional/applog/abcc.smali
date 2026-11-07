.class public Lgbsdk/optional/applog/abcc;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:Z

.field public static b:Ljava/lang/Class;

.field public static c:Ljava/lang/reflect/Method;

.field public static d:Z

.field public static e:Z

.field public static f:Z

.field public static g:Z

.field public static h:Z

.field public static i:Z

.field public static j:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "com.tencent.smtt.sdk.WebView"

    invoke-static {v0}, Lgbsdk/optional/applog/abcc;->a(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lgbsdk/optional/applog/abcc;->d:Z

    const-string v0, "gbsdk.android.support.v7.widget.RecyclerView"

    invoke-static {v0}, Lgbsdk/optional/applog/abcc;->a(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lgbsdk/optional/applog/abcc;->e:Z

    const-string v0, "gbsdk.android.support.v4.view.ViewPager"

    invoke-static {v0}, Lgbsdk/optional/applog/abcc;->a(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lgbsdk/optional/applog/abcc;->f:Z

    const-string v0, "gbsdk.android.support.v4.widget.SwipeRefreshLayout"

    invoke-static {v0}, Lgbsdk/optional/applog/abcc;->a(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lgbsdk/optional/applog/abcc;->g:Z

    const-string v0, "gbsdk.android.support.v4.app.Fragment"

    invoke-static {v0}, Lgbsdk/optional/applog/abcc;->a(Ljava/lang/String;)Z

    const-string v0, "gbsdk.android.support.v4.app.FragmentActivity"

    invoke-static {v0}, Lgbsdk/optional/applog/abcc;->a(Ljava/lang/String;)Z

    const-string v0, "gbsdk.android.support.v7.app.AlertDialog"

    invoke-static {v0}, Lgbsdk/optional/applog/abcc;->a(Ljava/lang/String;)Z

    const-string v0, "gbsdk.android.support.v7.view.menu.ListMenuItemView"

    invoke-static {v0}, Lgbsdk/optional/applog/abcc;->a(Ljava/lang/String;)Z

    const-string v0, "gbsdk.androidx.recyclerview.widget.RecyclerView"

    invoke-static {v0}, Lgbsdk/optional/applog/abcc;->a(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lgbsdk/optional/applog/abcc;->h:Z

    const-string v0, "gbsdk.androidx.viewpager.widget.ViewPager"

    invoke-static {v0}, Lgbsdk/optional/applog/abcc;->a(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lgbsdk/optional/applog/abcc;->i:Z

    const-string v0, "gbsdk.androidx.swiperefreshlayout.widget.SwipeRefreshLayout"

    invoke-static {v0}, Lgbsdk/optional/applog/abcc;->a(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lgbsdk/optional/applog/abcc;->j:Z

    const-string v0, "gbsdk.androidx.fragment.app.Fragment"

    invoke-static {v0}, Lgbsdk/optional/applog/abcc;->a(Ljava/lang/String;)Z

    const-string v0, "gbsdk.androidx.fragment.app.FragmentActivity"

    invoke-static {v0}, Lgbsdk/optional/applog/abcc;->a(Ljava/lang/String;)Z

    const-string v0, "gbsdk.androidx.appcompat.app.AlertDialog"

    invoke-static {v0}, Lgbsdk/optional/applog/abcc;->a(Ljava/lang/String;)Z

    const-string v0, "gbsdk.androidx.appcompat.view.menu.ListMenuItemView"

    invoke-static {v0}, Lgbsdk/optional/applog/abcc;->a(Ljava/lang/String;)Z

    return-void
.end method

.method public static a(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    :goto_0
    if-eqz p0, :cond_2

    const-class v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "getChildAdapterPosition"

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/view/View;

    aput-object v4, v3, v1

    invoke-virtual {p0, v0, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lgbsdk/optional/applog/abcc;->c:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    :goto_1
    sget-object v0, Lgbsdk/optional/applog/abcc;->c:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    const-string v0, "getChildPosition"

    :try_start_1
    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Landroid/view/View;

    aput-object v3, v2, v1

    invoke-virtual {p0, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lgbsdk/optional/applog/abcc;->c:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    nop

    :cond_0
    :goto_2
    sget-object v0, Lgbsdk/optional/applog/abcc;->c:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/view/View;)Z
    .locals 1

    instance-of v0, p0, Landroid/webkit/WebView;

    if-nez v0, :cond_1

    invoke-static {p0}, Lgbsdk/optional/applog/abcc;->b(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static a(Ljava/lang/Object;)Z
    .locals 1

    sget-boolean v0, Lgbsdk/optional/applog/abcc;->e:Z

    if-eqz v0, :cond_0

    const-string v0, "gbsdk.android.support.v7.widget.RecyclerView"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lgbsdk/optional/applog/abce;->a(Ljava/lang/Object;[Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Landroid/view/View;)Z
    .locals 1

    sget-boolean v0, Lgbsdk/optional/applog/abcc;->d:Z

    if-eqz v0, :cond_0

    instance-of p0, p0, Lcom/tencent/smtt/sdk/WebView;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static b(Ljava/lang/Object;)Z
    .locals 1

    sget-boolean v0, Lgbsdk/optional/applog/abcc;->h:Z

    if-eqz v0, :cond_0

    instance-of p0, p0, Lgbsdk/androidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static c(Ljava/lang/Object;)Z
    .locals 1

    sget-boolean v0, Lgbsdk/optional/applog/abcc;->f:Z

    if-eqz v0, :cond_0

    const-string v0, "gbsdk.android.support.v4.view.ViewPager"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lgbsdk/optional/applog/abce;->a(Ljava/lang/Object;[Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
