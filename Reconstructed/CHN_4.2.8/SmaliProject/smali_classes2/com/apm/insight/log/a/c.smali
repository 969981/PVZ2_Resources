.class public final Lcom/apm/insight/log/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apm/insight/log/a/c$a;
    }
.end annotation


# static fields
.field private static final a:I = 0x9

.field private static b:J

.field private static c:J

.field private static d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method static a()Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 140
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 141
    sget-wide v1, Lcom/apm/insight/log/a/c;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "start"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-wide v1, Lcom/apm/insight/log/a/c;->c:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "end"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v1, Lcom/apm/insight/log/a/c;->e:Ljava/lang/String;

    const-string v2, "reason"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v1, Lcom/apm/insight/log/a/c;->d:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    sget-object v2, Lcom/apm/insight/log/a/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, ".alog.hot"

    .line 147
    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    .line 148
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    sget v6, Lcom/apm/insight/log/a/c;->a:I

    sub-int/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 150
    :cond_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 152
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const/4 v1, 0x0

    .line 154
    sput-object v1, Lcom/apm/insight/log/a/c;->e:Ljava/lang/String;

    .line 155
    sput-object v1, Lcom/apm/insight/log/a/c;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJI)[Ljava/io/File;
    .locals 14

    move/from16 v8, p7

    .line 39
    sput-wide p3, Lcom/apm/insight/log/a/c;->b:J

    .line 40
    sput-wide p5, Lcom/apm/insight/log/a/c;->c:J

    const/4 v0, 0x0

    .line 41
    sput-object v0, Lcom/apm/insight/log/a/c;->e:Ljava/lang/String;

    .line 42
    sput-object v0, Lcom/apm/insight/log/a/c;->d:Ljava/util/ArrayList;

    const/4 v9, 0x0

    cmp-long v1, p3, p5

    if-lez v1, :cond_0

    const-string v0, "time interval is invalid"

    .line 45
    sput-object v0, Lcom/apm/insight/log/a/c;->e:Ljava/lang/String;

    new-array v0, v9, [Ljava/io/File;

    return-object v0

    .line 49
    :cond_0
    new-instance v10, Ljava/io/File;

    move-object v1, p0

    invoke-direct {v10, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {v10}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_4

    .line 55
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const/16 v1, 0x3a

    const/16 v2, 0x2d

    move-object v3, p1

    .line 56
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v3, p1

    move-object v1, v3

    .line 58
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "^\\d{4}_\\d{2}_\\d{2}_(\\d+)__"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "\\S+"

    if-eqz v3, :cond_3

    move-object v1, v4

    goto :goto_1

    :cond_3
    invoke-static {v1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "__"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    invoke-static/range {p2 .. p2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_2
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\\.vlog$"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 58
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 65
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    if-lez v8, :cond_5

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_5
    move-object v12, v0

    .line 72
    new-instance v13, Lcom/apm/insight/log/a/d;

    move-object v0, v13

    move-object v1, v11

    move-wide/from16 v3, p5

    move-wide/from16 v5, p3

    move-object v7, v12

    invoke-direct/range {v0 .. v7}, Lcom/apm/insight/log/a/d;-><init>(Ljava/util/ArrayList;Ljava/util/regex/Pattern;JJLjava/util/ArrayList;)V

    invoke-virtual {v10, v13}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 109
    array-length v1, v0

    if-nez v1, :cond_7

    :cond_6
    const-string v1, "log file not found"

    .line 110
    sput-object v1, Lcom/apm/insight/log/a/c;->e:Ljava/lang/String;

    .line 111
    sput-object v11, Lcom/apm/insight/log/a/c;->d:Ljava/util/ArrayList;

    :cond_7
    if-gtz v8, :cond_9

    if-nez v0, :cond_8

    new-array v0, v9, [Ljava/io/File;

    :cond_8
    return-object v0

    .line 117
    :cond_9
    new-instance v0, Lcom/apm/insight/log/a/e;

    invoke-direct {v0}, Lcom/apm/insight/log/a/e;-><init>()V

    invoke-static {v12, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 129
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v8, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 130
    new-array v1, v0, [Ljava/io/File;

    :goto_3
    if-ge v9, v0, :cond_a

    .line 132
    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/apm/insight/log/a/c$a;

    iget-object v2, v2, Lcom/apm/insight/log/a/c$a;->a:Ljava/io/File;

    aput-object v2, v1, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_a
    return-object v1

    :cond_b
    :goto_4
    const-string v0, "log dir not exists"

    .line 51
    sput-object v0, Lcom/apm/insight/log/a/c;->e:Ljava/lang/String;

    new-array v0, v9, [Ljava/io/File;

    return-object v0
.end method
