/* NAME:
 * example_REDACT_PLSQLDEV_0.sql
 *
 * DESC:
 * Example of Oracle Data Redaction by using Oracle SQL Developer
 * 
 * LOG:
 * VERSION---DATE--------NAME-------------COMMENT
 * 0.1       23OCT2014   Johan Louwers    Initial upload to github.com
 *
 * LICENSE:
 * Copyright (C) 2014  Johan Louwers
 * 
 * This code is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License
 * as published by the Free Software Foundation; either version 2
 * of the License, or (at your option) any later version.
 * 
 * This code is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with this code; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
 * 
 */


-- Create table T_EXAMPLE_REDACT_SQLDEV_0

CREATE TABLE T_EXAMPLE_REDACT_SQLDEV_0 
(
  ID NUMBER NOT NULL 
, SECRET_DATA VARCHAR2(200) 
, CONSTRAINT T_EXAMPLE_REDACT_SQLDEVELO_PK PRIMARY KEY 
  (
    ID 
  )
  ENABLE 
);

COMMENT ON COLUMN T_EXAMPLE_REDACT_SQLDEV_0.ID IS 'Primary key';
COMMENT ON COLUMN T_EXAMPLE_REDACT_SQLDEV_0.SECRET_DATA IS 'column with secret data';

-- Insert example data into T_EXAMPLE_REDACT_SQLDEV_0
INSERT INTO T_EXAMPLE_REDACT_SQLDEV_0 (ID, SECRET_DATA) VALUES ('0', 'ABC SECRET DEF');
INSERT INTO T_EXAMPLE_REDACT_SQLDEV_0 (ID, SECRET_DATA) VALUES ('1', 'GHI SECRET JKL');
INSERT INTO T_EXAMPLE_REDACT_SQLDEV_0 (ID, SECRET_DATA) VALUES ('2', 'MNO SECRET PQR');
COMMIT;
