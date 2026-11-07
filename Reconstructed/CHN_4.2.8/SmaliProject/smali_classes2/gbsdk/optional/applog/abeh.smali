.class public Lgbsdk/optional/applog/abeh;
.super Lgbsdk/optional/applog/abbm;
.source ""


# instance fields
.field public F:I

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public k:I

.field public l:I

.field public m:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIII",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "bav2b_click"

    const/4 v2, 0x1

    .line 1
    invoke-direct {p0, v0, v1, v2, v0}, Lgbsdk/optional/applog/abbm;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 2
    iput-object p1, p0, Lgbsdk/optional/applog/abeh;->d:Ljava/lang/String;

    iput-object p2, p0, Lgbsdk/optional/applog/abeh;->e:Ljava/lang/String;

    iput-object p3, p0, Lgbsdk/optional/applog/abeh;->f:Ljava/lang/String;

    iput-object p4, p0, Lgbsdk/optional/applog/abeh;->g:Ljava/lang/String;

    iput-object p5, p0, Lgbsdk/optional/applog/abeh;->h:Ljava/lang/String;

    iput-object p10, p0, Lgbsdk/optional/applog/abeh;->i:Ljava/util/ArrayList;

    iput-object p11, p0, Lgbsdk/optional/applog/abeh;->j:Ljava/util/ArrayList;

    iput p6, p0, Lgbsdk/optional/applog/abeh;->k:I

    iput p7, p0, Lgbsdk/optional/applog/abeh;->l:I

    iput p8, p0, Lgbsdk/optional/applog/abeh;->m:I

    iput p9, p0, Lgbsdk/optional/applog/abeh;->F:I

    return-void
.end method


# virtual methods
.method public c()V
    .locals 3

    iget-object v0, p0, Lgbsdk/optional/applog/abbm;->a:Ljava/lang/String;

    if-nez v0, :cond_2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lgbsdk/optional/applog/abeh;->f:Ljava/lang/String;

    const-string v2, "element_path"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lgbsdk/optional/applog/abeh;->d:Ljava/lang/String;

    const-string v2, "page_key"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lgbsdk/optional/applog/abeh;->j:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v1, Lorg/json/JSONArray;

    iget-object v2, p0, Lgbsdk/optional/applog/abeh;->j:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    const-string v2, "positions"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    iget-object v1, p0, Lgbsdk/optional/applog/abeh;->i:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    new-instance v1, Lorg/json/JSONArray;

    iget-object v2, p0, Lgbsdk/optional/applog/abeh;->i:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    const-string v2, "texts"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    iget v1, p0, Lgbsdk/optional/applog/abeh;->k:I

    const-string v2, "element_width"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget v1, p0, Lgbsdk/optional/applog/abeh;->l:I

    const-string v2, "element_height"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget v1, p0, Lgbsdk/optional/applog/abeh;->m:I

    const-string v2, "touch_x"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget v1, p0, Lgbsdk/optional/applog/abeh;->F:I

    const-string v2, "touch_y"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v1, p0, Lgbsdk/optional/applog/abeh;->e:Ljava/lang/String;

    const-string v2, "page_title"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lgbsdk/optional/applog/abeh;->g:Ljava/lang/String;

    const-string v2, "element_id"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lgbsdk/optional/applog/abeh;->h:Ljava/lang/String;

    const-string v2, "element_type"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgbsdk/optional/applog/abbm;->a:Ljava/lang/String;

    :cond_2
    return-void
.end method
