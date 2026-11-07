.class public Lcom/bytedance/applog/simulate/SimulateLaunchActivity;
.super Landroid/app/Activity;
.source ""

# interfaces
.implements Lcom/bytedance/applog/IPageMeta;


# annotations
.annotation runtime Lcom/bytedance/applog/annotation/PageMeta;
    path = "/simulateLaunch"
    title = "\u5708\u9009/\u57cb\u70b9\u9a8c\u8bc1"
.end annotation


# static fields
.field public static final BIND_QUERY:Ljava/lang/String; = "bind_query"

.field public static final DEBUG_LOG:Ljava/lang/String; = "debug_log"

.field public static final KEY_URL_PREFIX:Ljava/lang/String; = "url_prefix"

.field public static final KEY_URL_PREFIX_NO_QR:Ljava/lang/String; = "url_prefix_no_qr"

.field public static final MODE_NO_QR:I = 0x1

.field public static final MODE_QR:I = 0x0

.field public static entryAppId:Ljava/lang/String; = ""

.field public static entryMode:I = 0x0

.field public static entryQrParam:Ljava/lang/String; = ""

.field public static entryType:Ljava/lang/String; = ""

.field public static entryUrlPrefix:Ljava/lang/String; = ""


# instance fields
.field public a:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static startSimulatorWithoutQR(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/bytedance/applog/AppLog;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/bytedance/applog/simulate/SimulateLaunchActivity;->startSimulatorWithoutQR(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static startSimulatorWithoutQR(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bytedance/applog/simulate/SimulateLaunchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "url_prefix_no_qr"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "aid_no_qr"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/bytedance/applog/log/IAppLogLogger;
    .locals 1

    sget-object v0, Lcom/bytedance/applog/simulate/SimulateLaunchActivity;->entryAppId:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/applog/log/LoggerImpl;->getLogger(Ljava/lang/String;)Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "applog_activity_simulate"

    const-string v0, "layout"

    invoke-static {p1, v0}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    const-string p1, "text_tip"

    const-string v0, "id"

    invoke-static {p1, v0}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/bytedance/applog/simulate/SimulateLaunchActivity;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "url_prefix_no_qr"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    const-string v2, "aid_no_qr"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    sput v3, Lcom/bytedance/applog/simulate/SimulateLaunchActivity;->entryMode:I

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/applog/simulate/SimulateLaunchActivity;->entryUrlPrefix:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/bytedance/applog/simulate/SimulateLaunchActivity;->entryAppId:Ljava/lang/String;

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_2

    sput v4, Lcom/bytedance/applog/simulate/SimulateLaunchActivity;->entryMode:I

    const-string p1, "aid"

    invoke-virtual {v0, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/bytedance/applog/simulate/SimulateLaunchActivity;->entryAppId:Ljava/lang/String;

    const-string p1, "qr_param"

    invoke-virtual {v0, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/bytedance/applog/simulate/SimulateLaunchActivity;->entryQrParam:Ljava/lang/String;

    const-string p1, "url_prefix"

    invoke-virtual {v0, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/bytedance/applog/simulate/SimulateLaunchActivity;->entryUrlPrefix:Ljava/lang/String;

    const-string p1, "type"

    invoke-virtual {v0, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/bytedance/applog/simulate/SimulateLaunchActivity;->entryType:Ljava/lang/String;

    const-string v0, "debug_log"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/applog/simulate/SimulateLaunchActivity;->a:Landroid/widget/TextView;

    const-string v0, "\u542f\u52a8\u5931\u8d25\uff1atype\u53c2\u6570\u9519\u8bef"

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    sget-object p1, Lcom/bytedance/applog/simulate/SimulateLaunchActivity;->entryUrlPrefix:Ljava/lang/String;

    invoke-static {p1}, Lgbsdk/optional/applog/abce;->c(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/bytedance/applog/simulate/SimulateLaunchActivity;->a:Landroid/widget/TextView;

    const-string v0, "\u542f\u52a8\u5931\u8d25\uff1a\u7f3a\u5c11url_prefix\u53c2\u6570"

    goto :goto_0

    :cond_2
    :goto_1
    sget-object p1, Lcom/bytedance/applog/simulate/SimulateLaunchActivity;->entryAppId:Ljava/lang/String;

    invoke-static {p1}, Lcom/bytedance/applog/AppLogManager;->getInstance(Ljava/lang/String;)Lcom/bytedance/applog/IAppLogInstance;

    move-result-object p1

    const-string v0, "SimulateLaunchActivity"

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/bytedance/applog/IAppLogInstance;->hasStarted()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/bytedance/applog/simulate/SimulateLaunchActivity;->a()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v1

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    new-array v5, v3, [Ljava/lang/Object;

    sget-object v6, Lcom/bytedance/applog/simulate/SimulateLaunchActivity;->entryAppId:Ljava/lang/String;

    aput-object v6, v5, v4

    const-string v6, "AppLog has started with appId:{}"

    invoke-interface {v1, v2, v6, v5}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V

    check-cast p1, Lcom/bytedance/bdtracker/d;

    .line 1
    new-instance v1, Lgbsdk/optional/applog/abff;

    invoke-direct {v1, p1}, Lgbsdk/optional/applog/abff;-><init>(Lcom/bytedance/bdtracker/d;)V

    new-array p1, v4, [Ljava/lang/Void;

    invoke-virtual {v1, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_3
    const-string p1, "android.app.ActivityThread"

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "currentActivityThread"

    :try_start_1
    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {p1, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v5, "mActivities"

    invoke-virtual {p1, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x13

    if-ge v5, v6, :cond_4

    invoke-virtual {p1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    goto :goto_2

    :cond_4
    invoke-virtual {p1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArrayMap;

    :goto_2
    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 3
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v2, v3, :cond_5

    :try_start_2
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object p1

    aget-object p1, p1, v4

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "com.bytedance.applog.simulate.SimulateLaunchActivity"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catch_0
    :cond_5
    const/4 p1, 0x0

    :goto_3
    if-nez p1, :cond_6

    const/4 p1, 0x1

    goto :goto_4

    :catchall_0
    move-exception p1

    .line 4
    invoke-virtual {p0}, Lcom/bytedance/applog/simulate/SimulateLaunchActivity;->a()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v2

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    aput-object p1, v6, v4

    const-string p1, "Check has activity failed"

    invoke-interface {v2, v5, p1, v6}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    const/4 p1, 0x0

    .line 5
    :goto_4
    invoke-virtual {p0}, Lcom/bytedance/applog/simulate/SimulateLaunchActivity;->a()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v2

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    sget-object v6, Lcom/bytedance/applog/simulate/SimulateLaunchActivity;->entryAppId:Ljava/lang/String;

    aput-object v6, v5, v4

    sget-object v4, Lcom/bytedance/applog/simulate/SimulateLaunchActivity;->entryUrlPrefix:Ljava/lang/String;

    aput-object v4, v5, v3

    sget v3, Lcom/bytedance/applog/simulate/SimulateLaunchActivity;->entryMode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v5, v4

    sget-object v3, Lcom/bytedance/applog/simulate/SimulateLaunchActivity;->entryQrParam:Ljava/lang/String;

    const/4 v4, 0x3

    aput-object v3, v5, v4

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v5, v4

    const-string v3, "Simulator onCreate appId: {}, urlPrefix: {}, mode: {}, params: {}, activity exists: {}"

    invoke-interface {v2, v0, v3, v5}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_7

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_7
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public pageProperties()Lorg/json/JSONObject;
    .locals 5

    const-string v0, "SimulateLaunchActivity"

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "class_name"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {p0}, Lcom/bytedance/applog/simulate/SimulateLaunchActivity;->a()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v2

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const-string v1, "JSON handle failed"

    invoke-interface {v2, v0, v1, v3}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public path()Ljava/lang/String;
    .locals 1

    const-string v0, "/simulateLaunch"

    return-object v0
.end method

.method public title()Ljava/lang/String;
    .locals 1

    const-string v0, "\u5708\u9009/\u57cb\u70b9\u9a8c\u8bc1"

    return-object v0
.end method
