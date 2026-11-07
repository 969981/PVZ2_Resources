.class public Lgbsdk/optional/applog/abas;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static b:Ljava/lang/reflect/Field;

.field public static c:Ljava/lang/Class;

.field public static d:Ljava/lang/Class;

.field public static e:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "WindowHelper"

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lgbsdk/optional/applog/abas;->a:Ljava/util/List;

    const/4 v0, 0x0

    sput-boolean v0, Lgbsdk/optional/applog/abas;->e:Z

    return-void
.end method

.method public static a()V
    .locals 8

    sget-boolean v0, Lgbsdk/optional/applog/abas;->e:Z

    if-nez v0, :cond_6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    const-string v0, "android.view.WindowManagerGlobal"

    goto :goto_0

    :cond_0
    const-string v0, "android.view.WindowManagerImpl"

    :goto_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v4, v1, :cond_1

    const-string v1, "sDefaultWindowManager"

    goto :goto_1

    :cond_1
    :try_start_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v4, 0xd

    if-lt v1, v4, :cond_2

    const-string v1, "sWindowManager"

    goto :goto_1

    :cond_2
    const-string v1, "mWindowManager"

    :goto_1
    :try_start_2
    const-string v4, "mViews"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    sput-object v4, Lgbsdk/optional/applog/abas;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sget-object v1, Lgbsdk/optional/applog/abas;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    sget-object v1, Lgbsdk/optional/applog/abas;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    const-class v4, Ljava/util/ArrayList;

    if-ne v1, v4, :cond_3

    goto :goto_2

    :cond_3
    sget-object v1, Lgbsdk/optional/applog/abas;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    const-class v1, [Landroid/view/View;

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v1

    sget-object v4, Lgbsdk/optional/applog/abas;->a:Ljava/util/List;

    new-array v5, v3, [Ljava/lang/Object;

    const-string v6, "Get window manager views failed"

    invoke-interface {v1, v4, v6, v0, v5}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/util/List;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_3
    const/16 v0, 0x17

    :try_start_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-lt v1, v0, :cond_4

    const-string v1, "com.android.internal.policy.PhoneWindow$DecorView"

    :try_start_4
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lgbsdk/optional/applog/abas;->c:Ljava/lang/Class;
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_6

    :catch_0
    const-string v1, "com.android.internal.policy.DecorView"

    :goto_4
    :try_start_5
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_5

    :cond_4
    const-string v1, "com.android.internal.policy.impl.PhoneWindow$DecorView"

    goto :goto_4

    :goto_5
    :try_start_6
    sput-object v1, Lgbsdk/optional/applog/abas;->c:Ljava/lang/Class;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v1

    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v4

    sget-object v5, Lgbsdk/optional/applog/abas;->a:Ljava/util/List;

    new-array v6, v3, [Ljava/lang/Object;

    const-string v7, "Get DecorView failed"

    invoke-interface {v4, v5, v7, v1, v6}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/util/List;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_6
    :try_start_7
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-lt v1, v0, :cond_5

    const-string v0, "android.widget.PopupWindow$PopupDecorView"

    :goto_7
    :try_start_8
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_8

    :cond_5
    const-string v0, "android.widget.PopupWindow$PopupViewContainer"

    goto :goto_7

    :goto_8
    :try_start_9
    sput-object v0, Lgbsdk/optional/applog/abas;->d:Ljava/lang/Class;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_9

    :catchall_2
    move-exception v0

    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v1

    sget-object v4, Lgbsdk/optional/applog/abas;->a:Ljava/util/List;

    new-array v3, v3, [Ljava/lang/Object;

    const-string v5, "Get popup view failed"

    invoke-interface {v1, v4, v5, v0, v3}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/util/List;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_9
    sput-boolean v2, Lgbsdk/optional/applog/abas;->e:Z

    :cond_6
    return-void
.end method

.method public static a(Landroid/view/View;)Z
    .locals 1

    sget-boolean v0, Lgbsdk/optional/applog/abas;->e:Z

    if-nez v0, :cond_0

    invoke-static {}, Lgbsdk/optional/applog/abas;->a()V

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    sget-object v0, Lgbsdk/optional/applog/abas;->c:Ljava/lang/Class;

    if-eq p0, v0, :cond_2

    sget-object v0, Lgbsdk/optional/applog/abas;->d:Ljava/lang/Class;

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
