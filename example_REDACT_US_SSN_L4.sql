/* NAME:
 * example_REDACT_US_SSN_L4.sql
 *
 * DESC:
 * Example of Oracl Data Redaction using REDACT_US_SSN_L4 to redact a social security number.
 * 
 * LOG:
 * VERSION---DATE--------NAME-------------COMMENT
 * 0.1       30AUG2014   Johan Louwers    Initial upload to github.com
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


-- Create table T_EXAMPLE_REDACT_US_SSN_L4
CREATE TABLE T_EXAMPLE_REDACT_US_SSN_L4 
(
  ID VARCHAR2(4) NOT NULL 
, SSNUMBER VARCHAR2(11) 
);

COMMENT ON COLUMN T_EXAMPLE_REDACT_US_SSN_L4.ID IS 'Identifier';
COMMENT ON COLUMN T_EXAMPLE_REDACT_US_SSN_L4.SSNUMBER IS 'Social Security Number';


-- Insert example data into T_EXAMPLE_REDACT_US_SSN_L4
INSERT INTO T_EXAMPLE_REDACT_US_SSN_L4 (ID, SSNUMBER) VALUES ('0001', '423-15-4755');
INSERT INTO T_EXAMPLE_REDACT_US_SSN_L4 (ID, SSNUMBER) VALUES ('0002', '417-31-5839');
INSERT INTO T_EXAMPLE_REDACT_US_SSN_L4 (ID, SSNUMBER) VALUES ('0003', '419-43-5331'); 
INSERT INTO T_EXAMPLE_REDACT_US_SSN_L4 (ID, SSNUMBER) VALUES ('0004', '420-35-4820'); 
INSERT INTO T_EXAMPLE_REDACT_US_SSN_L4 (ID, SSNUMBER) VALUES ('0005', '422-27-9592');
INSERT INTO T_EXAMPLE_REDACT_US_SSN_L4 (ID, SSNUMBER) VALUES ('0006', '416-25-2480');
INSERT INTO T_EXAMPLE_REDACT_US_SSN_L4 (ID, SSNUMBER) VALUES ('0007', '421-31-5338');
INSERT INTO T_EXAMPLE_REDACT_US_SSN_L4 (ID, SSNUMBER) VALUES ('0008', '417-33-3888');
COMMIT;
