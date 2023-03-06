resource "aws_s3_bucket" "lading" {
  # Parâmetros de configuração do recurso escolhido
  bucket = "dl-challenge-mod3-landing-zone-gp"
  tags = {
    IES   = "IGTI"
    CURSO = "EDC"
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "datalake-configuration" {
  bucket = aws_s3_bucket.lading.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
    bucket_key_enabled = true
  }
}

resource "aws_s3_bucket_acl" "datalake-acl" {
  bucket = aws_s3_bucket.lading.id
  acl    = "private"
}


resource "aws_s3_bucket_public_access_block" "datalake_public_access_block" {
  bucket                  = aws_s3_bucket.lading.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket" "processing" {
  # Parâmetros de configuração do recurso escolhido
  bucket = "dl-challenge-mod3-processing-zone-gp"
  tags = {
    IES   = "IGTI"
    CURSO = "EDC"
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "datalake-configuration-processing" {
  bucket = aws_s3_bucket.processing.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
    bucket_key_enabled = true
  }
}

resource "aws_s3_bucket_acl" "datalake-acl-processing" {
  bucket = aws_s3_bucket.processing.id
  acl    = "private"
}


resource "aws_s3_bucket_public_access_block" "datalake_public_access_block_processing" {
  bucket                  = aws_s3_bucket.processing.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket" "airflow_logs" {
  bucket = "dl-challenge-mod3-airflow-logs-gp"
  tags = {
    IES   = "IGTI"
    CURSO = "EDC"
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "airflow_logs_configuration" {
  bucket = aws_s3_bucket.airflow_logs.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
    bucket_key_enabled = true
  }
}

resource "aws_s3_bucket_acl" "airflow_logs_acl" {
  bucket = aws_s3_bucket.airflow_logs.id
  acl    = "private"
}

resource "aws_s3_bucket_public_access_block" "airflow_logs_public_access_block" {
  bucket                  = aws_s3_bucket.airflow_logs.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}
