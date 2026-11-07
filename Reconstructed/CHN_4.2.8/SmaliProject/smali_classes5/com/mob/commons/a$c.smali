.class Lcom/mob/commons/a$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/commons/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1128
    iput-object p1, p0, Lcom/mob/commons/a$c;->a:Ljava/util/List;

    .line 1129
    iput-object p2, p0, Lcom/mob/commons/a$c;->b:Ljava/util/List;

    .line 1130
    iput-object p3, p0, Lcom/mob/commons/a$c;->c:Ljava/util/List;

    .line 1131
    iput-object p4, p0, Lcom/mob/commons/a$c;->d:Ljava/util/List;

    .line 1132
    iput-object p5, p0, Lcom/mob/commons/a$c;->e:Ljava/util/List;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/mob/commons/a$c;
    .locals 8

    .line 1136
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 1138
    :try_start_0
    invoke-static {p0}, Lcom/mob/tools/utils/HashonHelper;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p0

    .line 1144
    const-string v0, "idfas"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1146
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1147
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/mob/commons/a$c;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :goto_0
    move-object v3, v0

    goto :goto_1

    .line 1148
    :cond_0
    instance-of v2, v0, Ljava/util/List;

    if-eqz v2, :cond_1

    .line 1149
    check-cast v0, Ljava/util/List;

    goto :goto_0

    :cond_1
    move-object v3, v1

    .line 1152
    :goto_1
    const-string v0, "ieid"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1154
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 1155
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/mob/commons/a$c;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :goto_2
    move-object v4, v0

    goto :goto_3

    .line 1156
    :cond_2
    instance-of v2, v0, Ljava/util/List;

    if-eqz v2, :cond_3

    .line 1157
    check-cast v0, Ljava/util/List;

    goto :goto_2

    :cond_3
    move-object v4, v1

    .line 1160
    :goto_3
    const-string v0, "snid"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1162
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 1163
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/mob/commons/a$c;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :goto_4
    move-object v5, v0

    goto :goto_5

    .line 1164
    :cond_4
    instance-of v2, v0, Ljava/util/List;

    if-eqz v2, :cond_5

    .line 1165
    check-cast v0, Ljava/util/List;

    goto :goto_4

    :cond_5
    move-object v5, v1

    .line 1168
    :goto_5
    const-string v0, "mcid"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 1170
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 1171
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/mob/commons/a$c;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :goto_6
    move-object v6, v0

    goto :goto_7

    .line 1172
    :cond_6
    instance-of v2, v0, Ljava/util/List;

    if-eqz v2, :cond_7

    .line 1173
    check-cast v0, Ljava/util/List;

    goto :goto_6

    :cond_7
    move-object v6, v1

    .line 1176
    :goto_7
    const-string v0, "oiid"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 1178
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 1179
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/mob/commons/a$c;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    :goto_8
    move-object v7, p0

    goto :goto_9

    .line 1180
    :cond_8
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_9

    .line 1181
    check-cast p0, Ljava/util/List;

    goto :goto_8

    :cond_9
    move-object v7, v1

    .line 1184
    :goto_9
    new-instance p0, Lcom/mob/commons/a$c;

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/mob/commons/a$c;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 1186
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_a
    return-object v1
.end method

.method private static b(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1227
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1229
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1230
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1231
    array-length v1, p0

    if-lez v1, :cond_0

    .line 1233
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 1237
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1193
    invoke-virtual {p0}, Lcom/mob/commons/a$c;->b()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/HashonHelper;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1197
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1198
    const-string v1, "idfas"

    iget-object v2, p0, Lcom/mob/commons/a$c;->a:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1199
    const-string v1, "ieid"

    iget-object v2, p0, Lcom/mob/commons/a$c;->b:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1200
    const-string v1, "snid"

    iget-object v2, p0, Lcom/mob/commons/a$c;->c:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1201
    const-string v1, "mcid"

    iget-object v2, p0, Lcom/mob/commons/a$c;->d:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1202
    const-string v1, "oiid"

    iget-object v2, p0, Lcom/mob/commons/a$c;->e:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1207
    iget-object v0, p0, Lcom/mob/commons/a$c;->a:Ljava/util/List;

    return-object v0
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1211
    iget-object v0, p0, Lcom/mob/commons/a$c;->b:Ljava/util/List;

    return-object v0
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1215
    iget-object v0, p0, Lcom/mob/commons/a$c;->c:Ljava/util/List;

    return-object v0
.end method

.method public f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1219
    iget-object v0, p0, Lcom/mob/commons/a$c;->d:Ljava/util/List;

    return-object v0
.end method

.method public g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1223
    iget-object v0, p0, Lcom/mob/commons/a$c;->e:Ljava/util/List;

    return-object v0
.end method
