.class public final Lcom/bytedance/ads/convert/flat/i/g$b;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ads/convert/flat/i/g;->a(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    sget-object v0, Lcom/bytedance/ads/convert/flat/i/g;->i:Lcom/bytedance/ads/convert/flat/i/g;

    .line 1
    sget-boolean v1, Lcom/bytedance/ads/convert/flat/i/g;->d:Z

    if-eqz v1, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v1, Lcom/bytedance/ads/convert/flat/i/g;->g:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    .line 3
    invoke-static {v0, v2}, Lcom/bytedance/ads/convert/flat/i/g;->a(Lcom/bytedance/ads/convert/flat/i/g;I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "app_switch_event_params"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 4
    :cond_1
    sget-object v0, Lcom/bytedance/ads/convert/flat/f/b;->a:Lorg/json/JSONObject;

    if-nez v0, :cond_2

    return-void

    .line 5
    :cond_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "play_session_num"

    .line 6
    :try_start_0
    sget v2, Lcom/bytedance/ads/convert/flat/i/g;->a:I

    add-int/lit8 v3, v2, 0x1

    .line 7
    sput v3, Lcom/bytedance/ads/convert/flat/i/g;->a:I

    .line 8
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x0

    const-string v2, "play_session"

    const-string v3, "label"

    .line 9
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "params"

    .line 10
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance v3, Lcom/bytedance/ads/convert/flat/f/b;

    invoke-direct {v3, v2}, Lcom/bytedance/ads/convert/flat/f/b;-><init>(Ljava/lang/String;)V

    .line 12
    iput-object v1, v3, Lcom/bytedance/ads/convert/flat/f/b;->g:Ljava/lang/String;

    .line 13
    iput-object v0, v3, Lcom/bytedance/ads/convert/flat/f/b;->h:Lorg/json/JSONObject;

    const-string v0, "Convert:PlaySession"

    .line 14
    invoke-virtual {v3, v0}, Lcom/bytedance/ads/convert/flat/f/b;->a(Ljava/lang/String;)V

    return-void
.end method
