.class public final Lcom/apm/insight/log/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/FilenameFilter;


# instance fields
.field private synthetic a:Ljava/util/regex/Pattern;

.field private synthetic b:Lcom/apm/insight/log/a/a;


# direct methods
.method constructor <init>(Lcom/apm/insight/log/a/a;Ljava/util/regex/Pattern;)V
    .locals 0

    .line 341
    iput-object p1, p0, Lcom/apm/insight/log/a/b;->b:Lcom/apm/insight/log/a/a;

    iput-object p2, p0, Lcom/apm/insight/log/a/b;->a:Ljava/util/regex/Pattern;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    .line 344
    iget-object p1, p0, Lcom/apm/insight/log/a/b;->a:Ljava/util/regex/Pattern;

    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    return p1
.end method
