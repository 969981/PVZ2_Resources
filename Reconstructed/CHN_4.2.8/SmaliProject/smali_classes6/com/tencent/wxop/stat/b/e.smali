.class final Lcom/tencent/wxop/stat/b/e;
.super Ljava/lang/Object;


# instance fields
.field L:I

.field M:Ljava/lang/String;

.field a:Ljava/lang/String;

.field aQ:I

.field aR:Ljava/lang/String;

.field aS:Ljava/lang/String;

.field ab:Ljava/lang/String;

.field al:Ljava/lang/String;

.field b:Ljava/lang/String;

.field bq:Ljava/lang/String;

.field br:Ljava/lang/String;

.field bs:Ljava/lang/String;

.field bt:Ljava/lang/String;

.field cA:Landroid/util/DisplayMetrics;

.field cB:Landroid/content/Context;

.field private cC:Ljava/lang/String;

.field private cD:Ljava/lang/String;

.field private cE:Ljava/lang/String;

.field private cF:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "2.0.3"

    iput-object v0, p0, Lcom/tencent/wxop/stat/b/e;->b:Ljava/lang/String;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v0, p0, Lcom/tencent/wxop/stat/b/e;->L:I

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/wxop/stat/b/e;->M:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/wxop/stat/b/e;->ab:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wxop/stat/b/e;->bq:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/wxop/stat/b/e;->aQ:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/wxop/stat/b/e;->aR:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/wxop/stat/b/e;->aS:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/wxop/stat/b/e;->cB:Landroid/content/Context;

    iput-object v0, p0, Lcom/tencent/wxop/stat/b/e;->cC:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/wxop/stat/b/e;->cD:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/wxop/stat/b/e;->cE:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/wxop/stat/b/e;->cF:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/wxop/stat/b/e;->cB:Landroid/content/Context;

    invoke-static {p1}, Lcom/tencent/wxop/stat/b/l;->x(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/wxop/stat/b/e;->cA:Landroid/util/DisplayMetrics;

    iget-object p1, p0, Lcom/tencent/wxop/stat/b/e;->cB:Landroid/content/Context;

    invoke-static {p1}, Lcom/tencent/wxop/stat/b/l;->D(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/wxop/stat/b/e;->a:Ljava/lang/String;

    iget-object p1, p0, Lcom/tencent/wxop/stat/b/e;->cB:Landroid/content/Context;

    invoke-static {p1}, Lcom/tencent/wxop/stat/c;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/wxop/stat/b/e;->br:Ljava/lang/String;

    iget-object p1, p0, Lcom/tencent/wxop/stat/b/e;->cB:Landroid/content/Context;

    invoke-static {p1}, Lcom/tencent/wxop/stat/b/l;->C(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/wxop/stat/b/e;->bs:Ljava/lang/String;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/wxop/stat/b/e;->bt:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/wxop/stat/b/l;->au()I

    move-result p1

    iput p1, p0, Lcom/tencent/wxop/stat/b/e;->aQ:I

    iget-object p1, p0, Lcom/tencent/wxop/stat/b/e;->cB:Landroid/content/Context;

    invoke-static {p1}, Lcom/tencent/wxop/stat/b/l;->H(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/wxop/stat/b/e;->al:Ljava/lang/String;

    iget-object p1, p0, Lcom/tencent/wxop/stat/b/e;->cB:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/wxop/stat/b/e;->aR:Ljava/lang/String;

    iget p1, p0, Lcom/tencent/wxop/stat/b/e;->L:I

    const/16 v0, 0xe

    if-lt p1, v0, :cond_0

    iget-object p1, p0, Lcom/tencent/wxop/stat/b/e;->cB:Landroid/content/Context;

    invoke-static {p1}, Lcom/tencent/wxop/stat/b/l;->M(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/wxop/stat/b/e;->cC:Ljava/lang/String;

    :cond_0
    invoke-static {}, Lcom/tencent/wxop/stat/b/l;->az()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/wxop/stat/b/e;->cD:Ljava/lang/String;

    iget-object p1, p0, Lcom/tencent/wxop/stat/b/e;->cB:Landroid/content/Context;

    invoke-static {p1}, Lcom/tencent/wxop/stat/b/l;->L(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/wxop/stat/b/e;->cE:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/wxop/stat/b/l;->ax()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/wxop/stat/b/e;->cF:Ljava/lang/String;

    iget-object p1, p0, Lcom/tencent/wxop/stat/b/e;->cB:Landroid/content/Context;

    invoke-static {p1}, Lcom/tencent/wxop/stat/b/l;->R(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/wxop/stat/b/e;->aS:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/wxop/stat/b/e;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method final a(Lorg/json/JSONObject;Ljava/lang/Thread;)V
    .locals 4

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/tencent/wxop/stat/b/e;->cA:Landroid/util/DisplayMetrics;

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/tencent/wxop/stat/b/e;->cA:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "*"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v1, p0, Lcom/tencent/wxop/stat/b/e;->cA:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "sr"

    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tencent/wxop/stat/b/e;->cA:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->xdpi:F

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/tencent/wxop/stat/b/e;->cA:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "dpi"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    iget-object p2, p0, Lcom/tencent/wxop/stat/b/e;->cB:Landroid/content/Context;

    invoke-static {p2}, Lcom/tencent/wxop/stat/g;->r(Landroid/content/Context;)Lcom/tencent/wxop/stat/g;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tencent/wxop/stat/g;->W()Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    iget-object v0, p0, Lcom/tencent/wxop/stat/b/e;->cB:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/wxop/stat/b/r;->U(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "bs"

    invoke-static {p2, v1, v0}, Lcom/tencent/wxop/stat/b/r;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/wxop/stat/b/e;->cB:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/wxop/stat/b/r;->V(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ss"

    invoke-static {p2, v1, v0}, Lcom/tencent/wxop/stat/b/r;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, "wf"

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lcom/tencent/wxop/stat/b/r;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object p2, p0, Lcom/tencent/wxop/stat/b/e;->cB:Landroid/content/Context;

    invoke-static {p2}, Lcom/tencent/wxop/stat/b/r;->X(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_2

    const-string v0, "wflist"

    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lcom/tencent/wxop/stat/b/r;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string p2, "sen"

    iget-object v0, p0, Lcom/tencent/wxop/stat/b/e;->cC:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/tencent/wxop/stat/b/r;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const-string v0, "thn"

    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lcom/tencent/wxop/stat/b/r;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/tencent/wxop/stat/b/e;->cB:Landroid/content/Context;

    invoke-static {p2}, Lcom/tencent/wxop/stat/c;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "qq"

    invoke-static {p1, v0, p2}, Lcom/tencent/wxop/stat/b/r;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/tencent/wxop/stat/b/e;->cB:Landroid/content/Context;

    invoke-static {p2}, Lcom/tencent/wxop/stat/c;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "cui"

    invoke-static {p1, v0, p2}, Lcom/tencent/wxop/stat/b/r;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/tencent/wxop/stat/b/e;->cE:Ljava/lang/String;

    invoke-static {p2}, Lcom/tencent/wxop/stat/b/l;->e(Ljava/lang/String;)Z

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "/"

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/tencent/wxop/stat/b/e;->cE:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    array-length p2, p2

    if-ne p2, v1, :cond_4

    iget-object p2, p0, Lcom/tencent/wxop/stat/b/e;->cE:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    aget-object p2, p2, v0

    const-string v3, "fram"

    invoke-static {p1, v3, p2}, Lcom/tencent/wxop/stat/b/r;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object p2, p0, Lcom/tencent/wxop/stat/b/e;->cF:Ljava/lang/String;

    invoke-static {p2}, Lcom/tencent/wxop/stat/b/l;->e(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/tencent/wxop/stat/b/e;->cF:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    array-length p2, p2

    if-ne p2, v1, :cond_5

    iget-object p2, p0, Lcom/tencent/wxop/stat/b/e;->cF:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    aget-object p2, p2, v0

    const-string v0, "from"

    invoke-static {p1, v0, p2}, Lcom/tencent/wxop/stat/b/r;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object p2, p0, Lcom/tencent/wxop/stat/b/e;->cB:Landroid/content/Context;

    invoke-static {p2}, Lcom/tencent/wxop/stat/t;->s(Landroid/content/Context;)Lcom/tencent/wxop/stat/t;

    move-result-object p2

    iget-object v0, p0, Lcom/tencent/wxop/stat/b/e;->cB:Landroid/content/Context;

    invoke-virtual {p2, v0}, Lcom/tencent/wxop/stat/t;->t(Landroid/content/Context;)Lcom/tencent/wxop/stat/b/c;

    move-result-object p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/tencent/wxop/stat/b/e;->cB:Landroid/content/Context;

    invoke-static {p2}, Lcom/tencent/wxop/stat/t;->s(Landroid/content/Context;)Lcom/tencent/wxop/stat/t;

    move-result-object p2

    iget-object v0, p0, Lcom/tencent/wxop/stat/b/e;->cB:Landroid/content/Context;

    invoke-virtual {p2, v0}, Lcom/tencent/wxop/stat/t;->t(Landroid/content/Context;)Lcom/tencent/wxop/stat/b/c;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tencent/wxop/stat/b/c;->b()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ui"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_6
    iget-object p2, p0, Lcom/tencent/wxop/stat/b/e;->cB:Landroid/content/Context;

    invoke-static {p2}, Lcom/tencent/wxop/stat/c;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "mid"

    invoke-static {p1, v0, p2}, Lcom/tencent/wxop/stat/b/r;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object p2, p0, Lcom/tencent/wxop/stat/b/e;->cB:Landroid/content/Context;

    invoke-static {p2}, Lcom/tencent/wxop/stat/b/l;->I(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "pcn"

    invoke-static {p1, v0, p2}, Lcom/tencent/wxop/stat/b/r;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "osn"

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/tencent/wxop/stat/b/r;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "av"

    iget-object v0, p0, Lcom/tencent/wxop/stat/b/e;->a:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/tencent/wxop/stat/b/r;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "ch"

    iget-object v0, p0, Lcom/tencent/wxop/stat/b/e;->br:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/tencent/wxop/stat/b/r;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "mf"

    iget-object v0, p0, Lcom/tencent/wxop/stat/b/e;->ab:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/tencent/wxop/stat/b/r;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "sv"

    iget-object v0, p0, Lcom/tencent/wxop/stat/b/e;->b:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/tencent/wxop/stat/b/r;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "osd"

    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/tencent/wxop/stat/b/r;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "prod"

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/tencent/wxop/stat/b/r;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "tags"

    sget-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/tencent/wxop/stat/b/r;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "id"

    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/tencent/wxop/stat/b/r;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "fng"

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/tencent/wxop/stat/b/r;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "lch"

    iget-object v0, p0, Lcom/tencent/wxop/stat/b/e;->aS:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/tencent/wxop/stat/b/r;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget p2, p0, Lcom/tencent/wxop/stat/b/e;->L:I

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "ov"

    invoke-static {p1, v0, p2}, Lcom/tencent/wxop/stat/b/r;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "os"

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p2, "op"

    iget-object v0, p0, Lcom/tencent/wxop/stat/b/e;->bs:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/tencent/wxop/stat/b/r;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "lg"

    iget-object v0, p0, Lcom/tencent/wxop/stat/b/e;->bq:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/tencent/wxop/stat/b/r;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "md"

    iget-object v0, p0, Lcom/tencent/wxop/stat/b/e;->M:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/tencent/wxop/stat/b/r;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "tz"

    iget-object v0, p0, Lcom/tencent/wxop/stat/b/e;->bt:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/tencent/wxop/stat/b/r;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget p2, p0, Lcom/tencent/wxop/stat/b/e;->aQ:I

    if-eqz p2, :cond_7

    const-string v0, "jb"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_7
    const-string p2, "sd"

    iget-object v0, p0, Lcom/tencent/wxop/stat/b/e;->al:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/tencent/wxop/stat/b/r;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "apn"

    iget-object v0, p0, Lcom/tencent/wxop/stat/b/e;->aR:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/tencent/wxop/stat/b/r;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "cpu"

    iget-object v0, p0, Lcom/tencent/wxop/stat/b/e;->cD:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/tencent/wxop/stat/b/r;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "abi"

    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/tencent/wxop/stat/b/r;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "abi2"

    sget-object v0, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/tencent/wxop/stat/b/r;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "ram"

    iget-object v0, p0, Lcom/tencent/wxop/stat/b/e;->cE:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/tencent/wxop/stat/b/r;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "rom"

    iget-object v0, p0, Lcom/tencent/wxop/stat/b/e;->cF:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/tencent/wxop/stat/b/r;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
