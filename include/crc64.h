#ifndef UL_NG_CRC64_H
#define UL_NG_CRC64_H

#include <sys/types.h>
#include <stdint.h>

extern uint64_t ul_crc64_ecma(const unsigned char *input_str, size_t num_bytes);
extern uint64_t ul_crc64_we(const unsigned char *input_str, size_t num_bytes);
extern uint64_t ul_update_crc64(uint64_t crc, unsigned char c);

#endif

