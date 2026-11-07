.class public Lgbsdk/common/host/abra;
.super Ljava/lang/Object;
.source "ZeusPluginConfig.java"


# static fields
.field public static final SETTINGS_NAME:Ljava/lang/String; = "zeus_plugin_config"

.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field public DH:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "dialog_title"
    .end annotation
.end field

.field public DI:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "dialog_content_updating"
    .end annotation
.end field

.field public DJ:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "dialog_content_failed"
    .end annotation
.end field

.field public DK:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "dialog_content_need_restart"
    .end annotation
.end field

.field public DL:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "force_update_mode"
    .end annotation
.end field

.field public DM:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "allow_fallback"
    .end annotation
.end field

.field public DN:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "check_dependency"
    .end annotation
.end field

.field public DO:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "check_host_type"
    .end annotation
.end field

.field public DQ:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tech_report_mode"
    .end annotation
.end field

.field public DR:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tech_report_whitelist"
    .end annotation
.end field

.field public DS:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "request_timeout_millis"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "\u6296\u97f3\u6e38\u620f\u5e73\u53f0\u670d\u52a1\u66f4\u65b0"

    .line 10
    iput-object v0, p0, Lgbsdk/common/host/abra;->DH:Ljava/lang/String;

    const-string v0, "\u6b63\u5728\u4e3a\u60a8\u66f4\u65b0\uff0c\u8bf7\u8010\u5fc3\u7b49\u5f85"

    .line 13
    iput-object v0, p0, Lgbsdk/common/host/abra;->DI:Ljava/lang/String;

    const-string v0, "\u7f51\u7edc\u5f02\u5e38\uff0c\u66f4\u65b0\u5931\u8d25"

    .line 16
    iput-object v0, p0, Lgbsdk/common/host/abra;->DJ:Ljava/lang/String;

    const-string v0, "\u5f53\u524d\u6e38\u620f\u670d\u52a1\u7248\u672c\u8f83\u4f4e\uff0c\u8bf7\u91cd\u65b0\u542f\u52a8\u6e38\u620f\u66f4\u65b0\u5e73\u53f0\u670d\u52a1\u7248\u672c"

    .line 19
    iput-object v0, p0, Lgbsdk/common/host/abra;->DK:Ljava/lang/String;

    const/4 v0, 0x1

    .line 24
    iput v0, p0, Lgbsdk/common/host/abra;->DL:I

    .line 27
    iput-boolean v0, p0, Lgbsdk/common/host/abra;->DM:Z

    .line 30
    iput-boolean v0, p0, Lgbsdk/common/host/abra;->DN:Z

    .line 33
    iput-boolean v0, p0, Lgbsdk/common/host/abra;->DO:Z

    .line 38
    iput v0, p0, Lgbsdk/common/host/abra;->DQ:I

    const-string v0, "prepare_zeus|prepare_zeus_result"

    .line 42
    iput-object v0, p0, Lgbsdk/common/host/abra;->DR:Ljava/lang/String;

    const/16 v0, 0x1770

    .line 46
    iput v0, p0, Lgbsdk/common/host/abra;->DS:I

    return-void
.end method

.method public static eu()Lgbsdk/common/host/abra;
    .locals 5

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lgbsdk/common/host/abra;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "3e5f62ecdf9707895bbe3f20a68d676f"

    invoke-static {v0, v2, v1, v3, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Lgbsdk/common/host/abra;

    return-object v0

    .line 51
    :cond_0
    const-class v0, Lgbsdk/common/host/abra;

    const-string v1, "zeus_plugin_config"

    invoke-static {v0, v1}, Lcom/bytedance/ttgame/tob/common/host/framework/cache/SettingsJsonParser;->parse(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgbsdk/common/host/abra;

    if-nez v0, :cond_1

    .line 53
    new-instance v0, Lgbsdk/common/host/abra;

    invoke-direct {v0}, Lgbsdk/common/host/abra;-><init>()V

    :cond_1
    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lgbsdk/common/host/abra;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "57adc8fd09e33f917ca72e8e00020e91"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 60
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "title:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lgbsdk/common/host/abra;->DH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nupdating:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lgbsdk/common/host/abra;->DI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nrestart:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lgbsdk/common/host/abra;->DK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nfailed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lgbsdk/common/host/abra;->DJ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nforceUpdateMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lgbsdk/common/host/abra;->DL:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nallowFallbackOnForceMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lgbsdk/common/host/abra;->DM:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\ncheckDependencyOnForceMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lgbsdk/common/host/abra;->DN:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\ncheckHostType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lgbsdk/common/host/abra;->DO:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\ntechReportMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lgbsdk/common/host/abra;->DQ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\ntechReportWhiteList:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lgbsdk/common/host/abra;->DR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nrequestTimeoutMillis:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lgbsdk/common/host/abra;->DS:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
