.class public Lcom/talkweb/sdk/util/FormatUtil;
.super Ljava/lang/Object;
.source "FormatUtil.java"


# static fields
.field private static final EMAIL_REGX:Ljava/lang/String; = "\\w+([-+.]\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*"

.field public static final PHONE_REGX:Ljava/lang/String; = "^1\\d{10}$"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkEmail(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "\\w+([-+.]\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*"

    .line 27
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 28
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    return p0
.end method

.method public static checkPhone(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "^1\\d{10}$"

    .line 22
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 23
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    return p0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1

    .line 31
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "18073111523"

    invoke-static {v0}, Lcom/talkweb/sdk/util/FormatUtil;->checkPhone(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Z)V

    return-void
.end method
