.class public Lcom/bytedance/ttgame/tob/packer/datalink/StubActivity$ac;
.super Lcom/volcengine/zeus/activity/GenerateProxyAppCompatActivity;
.source "StubActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ttgame/tob/packer/datalink/StubActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ac"
.end annotation


# static fields
.field public static b:Lcom/meituan/robust/ChangeQuickRedirect;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/volcengine/zeus/activity/GenerateProxyAppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getPluginPkgName()Ljava/lang/String;
    .locals 1

    const-string v0, "gbsdk.plugin.datalink"

    return-object v0
.end method
