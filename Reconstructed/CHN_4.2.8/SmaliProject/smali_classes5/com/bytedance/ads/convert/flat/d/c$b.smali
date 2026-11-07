.class public final Lcom/bytedance/ads/convert/flat/d/c$b;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ads/convert/flat/d/c;-><init>(Lcom/bytedance/ads/convert/flat/d/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/bytedance/ads/convert/flat/d/c;


# direct methods
.method public constructor <init>(Lcom/bytedance/ads/convert/flat/d/c;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/ads/convert/flat/d/c$b;->a:Lcom/bytedance/ads/convert/flat/d/c;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/bytedance/ads/convert/flat/d/c$b;->a:Lcom/bytedance/ads/convert/flat/d/c;

    .line 2
    iget-object v1, v1, Lcom/bytedance/ads/convert/flat/d/c;->a:Ljava/lang/String;

    const-string v2, "client_tun"

    .line 3
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/bytedance/ads/convert/flat/d/c$b;->a:Lcom/bytedance/ads/convert/flat/d/c;

    .line 4
    iget-object v1, v1, Lcom/bytedance/ads/convert/flat/d/c;->b:Ljava/lang/String;

    const-string v2, "disk"

    .line 5
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/bytedance/ads/convert/flat/d/c$b;->a:Lcom/bytedance/ads/convert/flat/d/c;

    .line 6
    iget-object v1, v1, Lcom/bytedance/ads/convert/flat/d/c;->c:Ljava/lang/String;

    const-string v2, "memory"

    .line 7
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/bytedance/ads/convert/flat/d/c$b;->a:Lcom/bytedance/ads/convert/flat/d/c;

    .line 8
    iget-object v1, v1, Lcom/bytedance/ads/convert/flat/d/c;->d:Ljava/lang/String;

    const-string v2, "boot_time_sec"

    .line 9
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/bytedance/ads/convert/flat/d/c$b;->a:Lcom/bytedance/ads/convert/flat/d/c;

    .line 10
    iget-object v1, v1, Lcom/bytedance/ads/convert/flat/d/c;->g:Lcom/bytedance/ads/convert/flat/a/i;

    if-eqz v1, :cond_0

    .line 11
    invoke-virtual {v1}, Lcom/bytedance/ads/convert/flat/a/i;->a()Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "u_t"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/bytedance/ads/convert/flat/d/c$b;->a:Lcom/bytedance/ads/convert/flat/d/c;

    .line 12
    iget-object v1, v1, Lcom/bytedance/ads/convert/flat/d/c;->e:Lorg/json/JSONArray;

    const-string v2, "pkg_info"

    .line 13
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/bytedance/ads/convert/flat/d/c$b;->a:Lcom/bytedance/ads/convert/flat/d/c;

    .line 14
    iget-object v1, v1, Lcom/bytedance/ads/convert/flat/d/c;->f:[I

    .line 15
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "java.util.Arrays.toString(this)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "inode"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method
