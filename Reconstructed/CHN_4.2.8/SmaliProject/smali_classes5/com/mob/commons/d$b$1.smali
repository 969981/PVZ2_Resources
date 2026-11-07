.class Lcom/mob/commons/d$b$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/commons/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/d$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/commons/d$b;


# direct methods
.method constructor <init>(Lcom/mob/commons/d$b;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/mob/commons/d$b$1;->a:Lcom/mob/commons/d$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/mob/tools/utils/FileLocker;)Z
    .locals 7

    .line 142
    :try_start_0
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 143
    const-string v0, "004f=fgWnk"

    invoke-static {v0}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mob/commons/d$b$1;->a:Lcom/mob/commons/d$b;

    invoke-static {v1}, Lcom/mob/commons/d$b;->a(Lcom/mob/commons/d$b;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v0

    .line 145
    iget-object v1, p0, Lcom/mob/commons/d$b$1;->a:Lcom/mob/commons/d$b;

    invoke-static {v1}, Lcom/mob/commons/d$b;->b(Lcom/mob/commons/d$b;)Ljava/util/HashMap;

    move-result-object v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_0

    .line 146
    iget-object v1, p0, Lcom/mob/commons/d$b$1;->a:Lcom/mob/commons/d$b;

    invoke-static {v1}, Lcom/mob/commons/d$b;->b(Lcom/mob/commons/d$b;)Ljava/util/HashMap;

    move-result-object v1

    const-string v4, "006$fhHgg[fl;k(fk"

    invoke-static {v4}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/mob/MobSDK;->getAppkey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v1, p0, Lcom/mob/commons/d$b$1;->a:Lcom/mob/commons/d$b;

    invoke-static {v1}, Lcom/mob/commons/d$b;->b(Lcom/mob/commons/d$b;)Ljava/util/HashMap;

    move-result-object v1

    const-string v4, "006Nfh*ggg8flhh"

    invoke-static {v4}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-object v1, p0, Lcom/mob/commons/d$b$1;->a:Lcom/mob/commons/d$b;

    invoke-static {v1}, Lcom/mob/commons/d$b;->b(Lcom/mob/commons/d$b;)Ljava/util/HashMap;

    move-result-object v1

    const-string v4, "006Afh1gglk\'fj"

    invoke-static {v4}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getAppVersionName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    const-string v1, "010-hi0fOfjfhTfkLhhfkgi9j"

    invoke-static {v1}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/mob/commons/b;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-eqz v1, :cond_0

    .line 152
    iget-object v1, p0, Lcom/mob/commons/d$b$1;->a:Lcom/mob/commons/d$b;

    invoke-static {v1}, Lcom/mob/commons/d$b;->b(Lcom/mob/commons/d$b;)Ljava/util/HashMap;

    move-result-object v1

    const-string v6, "010Zhi5f$fjfh,fk7hhfkgiKj"

    invoke-static {v6}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    :cond_0
    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getManufacturer()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mob/tools/utils/Data;->rawMD5(Ljava/lang/String;)[B

    move-result-object v1

    .line 156
    iget-object v4, p0, Lcom/mob/commons/d$b$1;->a:Lcom/mob/commons/d$b;

    invoke-static {v4}, Lcom/mob/commons/d$b;->b(Lcom/mob/commons/d$b;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v4}, Lcom/mob/tools/utils/HashonHelper;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "utf-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 157
    invoke-static {v1, v4}, Lcom/mob/tools/utils/Data;->AES128Encode([B[B)[B

    move-result-object v1

    .line 158
    const-string v4, "004j:fhDf?fh"

    invoke-static {v4}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v1, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-static {}, Lcom/mob/commons/d;->b()Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/mob/tools/utils/SQLiteHelper;->insert(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;Landroid/content/ContentValues;)J

    .line 162
    const-string p1, "004jkZfe9g"

    invoke-static {p1}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-wide/16 v4, 0x2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/mob/commons/b;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 163
    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getNetworkType()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 164
    const-string v0, "004KfmgefmFk"

    invoke-static {v0}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const-wide/16 v4, 0x78

    .line 167
    :cond_2
    invoke-static {}, Lcom/mob/commons/b;->d()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 170
    invoke-static {}, Lcom/mob/commons/d$c;->a()Lcom/mob/commons/d$c;

    move-result-object p1

    if-eqz p1, :cond_4

    cmp-long v0, v4, v2

    if-gtz v0, :cond_3

    .line 174
    invoke-virtual {p1}, Lcom/mob/commons/d$c;->run()V

    goto :goto_0

    .line 177
    :cond_3
    invoke-static {}, Lcom/mob/commons/a/o;->a()Lcom/mob/commons/a/o;

    move-result-object v0

    invoke-virtual {v0, v4, v5, p1}, Lcom/mob/commons/a/o;->a(JLjava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 179
    invoke-static {p1}, Lcom/mob/commons/d$c;->a(Lcom/mob/commons/d$c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 185
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :cond_4
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
