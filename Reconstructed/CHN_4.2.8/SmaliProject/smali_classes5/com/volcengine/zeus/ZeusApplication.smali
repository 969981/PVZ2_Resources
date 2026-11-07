.class public Lcom/volcengine/zeus/ZeusApplication;
.super Lcom/volcengine/zeus/PluginContext;
.source "SourceFile"


# instance fields
.field mHostApplication:Landroid/app/Application;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/volcengine/zeus/PluginContext;-><init>()V

    return-void
.end method


# virtual methods
.method public attach(Lcom/volcengine/zeus/plugin/Plugin;Landroid/app/Application;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/volcengine/zeus/ZeusApplication;->mPlugin:Lcom/volcengine/zeus/plugin/Plugin;

    .line 33
    iput-object p2, p0, Lcom/volcengine/zeus/ZeusApplication;->mHostApplication:Landroid/app/Application;

    .line 34
    invoke-virtual {p0, p2}, Lcom/volcengine/zeus/ZeusApplication;->attachBaseContext(Landroid/content/Context;)V

    .line 35
    invoke-virtual {p0}, Lcom/volcengine/zeus/ZeusApplication;->onCreate()V

    return-void
.end method

.method public attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 28
    invoke-super {p0, p1}, Lcom/volcengine/zeus/PluginContext;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public onCreate()V
    .locals 0

    return-void
.end method
