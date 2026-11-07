.class public final Lcom/bytedance/ads/convert/flat/a/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lcom/bytedance/ads/convert/flat/b/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/ads/convert/flat/b/a;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/ads/convert/flat/a/g;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/bytedance/ads/convert/flat/a/g;->b:Lcom/bytedance/ads/convert/flat/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    :try_start_0
    sget-object v0, Lcom/bytedance/ads/convert/flat/a/h;->c:Lcom/bytedance/ads/convert/flat/a/h;

    iget-object v1, p0, Lcom/bytedance/ads/convert/flat/a/g;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/bytedance/ads/convert/flat/a/h;->a(Lcom/bytedance/ads/convert/flat/a/h;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "41128"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v0, p0, Lcom/bytedance/ads/convert/flat/a/g;->a:Landroid/content/Context;

    const-string v1, "phone"

    .line 1
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    const-string v1, ""

    .line 2
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, 0x2f60c8e

    if-eq v3, v4, :cond_a

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const-string v2, "46009"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v2, 0x9

    goto/16 :goto_1

    :pswitch_1
    const-string v2, "46008"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v2, 0x8

    goto/16 :goto_1

    :pswitch_2
    const-string v2, "46007"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x7

    goto :goto_1

    :pswitch_3
    const-string v2, "46006"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x6

    goto :goto_1

    :pswitch_4
    const-string v3, "46005"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_0

    :pswitch_5
    const-string v2, "46004"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x4

    goto :goto_1

    :pswitch_6
    const-string v2, "46003"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v2, 0x3

    goto :goto_1

    :pswitch_7
    const-string v2, "46002"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v2, 0x2

    goto :goto_1

    :pswitch_8
    const-string v2, "46001"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v2, 0x1

    goto :goto_1

    :pswitch_9
    const-string v2, "46000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_0

    :cond_9
    const/4 v2, 0x0

    goto :goto_1

    :cond_a
    const-string v2, "46011"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    :goto_0
    const/4 v2, -0x1

    goto :goto_1

    :cond_b
    const/16 v2, 0xa

    :cond_c
    :goto_1
    packed-switch v2, :pswitch_data_1

    const-string v0, "0"

    goto :goto_2

    :pswitch_a
    const-string v0, "2"

    goto :goto_2

    :pswitch_b
    const-string v0, "3"

    goto :goto_2

    :pswitch_c
    const-string v0, "1"

    .line 3
    :goto_2
    :try_start_2
    sget-object v1, Lcom/bytedance/ads/convert/flat/a/h;->b:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 4
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/ads/convert/flat/a/a;

    if-eqz v0, :cond_e

    .line 5
    iget-object v1, v0, Lcom/bytedance/ads/convert/flat/a/a;->b:Lcom/bytedance/ads/convert/flat/a/i;

    .line 6
    iget-object v1, v1, Lcom/bytedance/ads/convert/flat/a/i;->b:Ljava/lang/String;

    const-string v2, "-11128"

    .line 7
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/bytedance/ads/convert/flat/a/g;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/bytedance/ads/convert/flat/c/c;->a(Landroid/content/Context;)Lcom/bytedance/ads/convert/flat/c/c;

    move-result-object v1

    new-instance v2, Lcom/bytedance/ads/convert/flat/a/g$a;

    invoke-direct {v2, p0, v0}, Lcom/bytedance/ads/convert/flat/a/g$a;-><init>(Lcom/bytedance/ads/convert/flat/a/g;Lcom/bytedance/ads/convert/flat/a/a;)V

    invoke-virtual {v1, v2}, Lcom/bytedance/ads/convert/flat/c/c;->a(Lcom/bytedance/ads/convert/flat/c/c$b;)V

    goto :goto_5

    :cond_d
    iget-object v1, p0, Lcom/bytedance/ads/convert/flat/a/g;->b:Lcom/bytedance/ads/convert/flat/b/a;

    if-eqz v1, :cond_11

    .line 8
    iget-object v0, v0, Lcom/bytedance/ads/convert/flat/a/a;->b:Lcom/bytedance/ads/convert/flat/a/i;

    .line 9
    invoke-interface {v1, v0}, Lcom/bytedance/ads/convert/flat/b/a;->a(Lcom/bytedance/ads/convert/flat/a/i;)V

    goto :goto_5

    :cond_e
    iget-object v0, p0, Lcom/bytedance/ads/convert/flat/a/g;->b:Lcom/bytedance/ads/convert/flat/b/a;

    if-eqz v0, :cond_11

    new-instance v1, Lcom/bytedance/ads/convert/flat/a/i;

    const-string v2, "11128"

    invoke-direct {v1, v2}, Lcom/bytedance/ads/convert/flat/a/i;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :cond_f
    iget-object v1, p0, Lcom/bytedance/ads/convert/flat/a/g;->b:Lcom/bytedance/ads/convert/flat/b/a;

    if-eqz v1, :cond_11

    new-instance v2, Lcom/bytedance/ads/convert/flat/a/i;

    invoke-direct {v2, v0}, Lcom/bytedance/ads/convert/flat/a/i;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    move-object v1, v2

    :goto_3
    invoke-interface {v0, v1}, Lcom/bytedance/ads/convert/flat/b/a;->a(Lcom/bytedance/ads/convert/flat/a/i;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/bytedance/ads/convert/flat/a/g;->b:Lcom/bytedance/ads/convert/flat/b/a;

    if-eqz v1, :cond_11

    new-instance v2, Lcom/bytedance/ads/convert/flat/a/i;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    goto :goto_4

    :cond_10
    const-string v0, "unknow"

    :goto_4
    invoke-direct {v2, v0}, Lcom/bytedance/ads/convert/flat/a/i;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/bytedance/ads/convert/flat/b/a;->a(Lcom/bytedance/ads/convert/flat/a/i;)V

    :cond_11
    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x2f60c6e
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_c
        :pswitch_a
        :pswitch_c
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method
